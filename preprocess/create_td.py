#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Feb 28 10:48:41 2020

@author: zwang
"""
import sys
import matplotlib.image as mpimg
import numpy as np
import nibabel as nib
from skimage import measure
import random
import os
import PIL.Image
PIL.Image.MAX_IMAGE_PIXELS = None

def crop(image,bbox):
    if len(image.shape)==3:
        return image[bbox[0]:bbox[2],bbox[1]:bbox[3],:]
    elif len(image.shape)==2:
        return image[bbox[0]:bbox[2],bbox[1]:bbox[3]]
    else:
        print("Image dimension wrong!")
        return 0

def labeledRegion(base,zone_sample,label):
    """
    if the base is not labeled anywhere, first extract labeled regions
    arg:
        base:base image
        sz: image to indicate where are labeled
        label: label images
    return: 
        base_images: a list of base pieces
        label_images: a list of label pieces
    """
    labeled_region,region_num=measure.label(zone_sample,return_num=True)
    #  Measure.label return a list of RegionProperties,
    #  Each item describes one labeled region, 
    #  Can be accessed using the attributes listed below
    #  Here, we use the bbox: Bounding box (min_row, min_col, max_row, max_col) 
    proper=measure.regionprops(labeled_region)
    base_list=[]
    label_list=[]
    for item in proper:
        base_list.append(crop(base,item.bbox))
        label_list.append(crop(label,item.bbox))
    return base_list,label_list

def extract_one_sample(base,label,sample_size,accumulator):
    H,W=label.shape[:2]
    h,w=sample_size
    #print(base.shape)
    #print(label.shape)
    #print(h,w)
    sample=np.zeros((h,w,4),dtype=np.uint8)
    x=random.randrange(W-w)
    y=random.randrange(H-h)
    sample[:,:,0:3]=base[y:y+h,x:x+w,:]
    sample[:,:,3]=label[y:y+h,x:x+w]
    return sample,y,y+h,x,x+w

def write_one_sample(sample,accumulator,save_path):
    sampleName=str(accumulator)+'.npy'
    np.save(save_path+'/'+sampleName,sample)


def create_dataset(base,zone_sample,label,save_path,sample_num,accumulator,sample_size):
    if zone_sample is not None:
        base_list,label_list=labeledRegion(base,zone_sample,label)
    else:
        base_list=[base]
        label_list=[label]
    
    regionNum=len(base_list)
    sample_num_eachRegion=int(sample_num/regionNum)
    tot = regionNum*sample_num
    record = np.zeros((tot,5)) # to store record of number of sample 
    count = 0;
    for i in range(regionNum):
        base_region=base_list[i]
        label_region=label_list[i]
        for j in range(sample_num_eachRegion):
            accumulator+=1
            print("Extracting the {}th sample".format(accumulator))
            sample,r0,r1,c0,c1=extract_one_sample(base_region,label_region,sample_size,accumulator)
            write_one_sample(sample,accumulator,save_path)
            record[count,0] = accumulator
            record[count,1] = r0
            record[count,2] = r1
            record[count,3] = c0
            record[count,4] = c1
           
    return accumulator,record
    

def main(argv):
    """
    Argv:
        sample_num: how many samples you want to extracted from this pathology image
        accumulator: the number of samples having been in dataset
        input_path: path to annotation pathology image
        output: path to save extracted samples
    """
    sample_num=int(argv[0]) # how many samples you want to extracted from this pathology image
    accumulator=int(argv[1]) # the number of samples having been in `save_path`. 
    base_path=argv[2]
    input_path=argv[3]
    output_path=argv[4]  # where you want to save these extarcted samples
    
    if len(argv) == 6:
            sample_size=argv[5]
        
    sample_size=(132,132)
    #base=mpimg.imread(os.path.join(input_path,"Base.tif"))
    base=mpimg.imread(base_path)
    base=base.transpose((1,0,2))
    #zone_sample=nib.load(os.path.join(input_path,"SampleZone.nii.gz"))
    zone_sample=nib.load(input_path + "SampleZone.nii.gz")
    #label=nib.load(os.path.join(input_path,"Biomarker.nii.gz"))
    label=nib.load(input_path + "Biomarker.nii.gz")
    zone_sample=zone_sample.get_fdata()
    zone_sample=zone_sample[:,:,0]    
    label=label.get_fdata()
    label=label[:,:,0]
    print(base.shape)
    print(label.shape)
    print("It is going to append samples to the dataset {}".format(output_path))
    print("There has been {} samples in this dataset".format(accumulator))
    accumulator,record=create_dataset(base,
                   zone_sample,
                   label,
                   output_path,            
                   sample_num,accumulator,sample_size)
    np.savetxt(output_path+'/'+os.path.split(base_path)[1].split('.')[0] + '_record.csv', a, delimiter=",")
    print("Sample extraction finished. Now there should be {} samples in that dataset".format(accumulator))
    


if __name__ == '__main__':
  main(sys.argv[1:])
    