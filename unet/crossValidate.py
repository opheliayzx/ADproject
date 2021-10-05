import os
import sys
import numpy as np
import torch
from torch.utils.data import Dataset, DataLoader
from Unet_arch import *
import random
import apply
import matplotlib.pyplot as plt

sys.path.append('../')
sys.path.append('../FeatureExtraction/')
sys.path.append('/cis/home/kstouff4/Documents/SurfaceTools/')

import deformSegmentations3D as ds

import feature_extraction as fe

# Tools for Generating Paths
from numpy import linalg as LA
from itertools import combinations
from scipy.special import comb
from scipy import stats

# Tools for caching
from os import path

# Tools for saving images
import scipy.misc
from scipy import io

# Tools for Reading in File
import nibabel as nib
from nibabel import processing
from nibabel import funcs

def saveFileNames(path,folds,savebase):
    '''
    Divides files in path into folds folds (paths always without last /)
    saves folds-1 of them together for a training data set and leaves one out
    saves to folder
    '''
    files=[f for f in os.listdir(path) if os.path.isfile(os.path.join(path,f))] # list of file names
    numPerFold = len(files)//folds
    random.shuffle(files)
    testIndices = np.zeros((folds,2))
    for i in range(folds):
        testIndices[i,0] = numPerFold*i
        testIndices[i,1] = numPerFold*(i+1)
    testIndices[-1,-1] = len(files)
    testIndices = testIndices.astype(int)
    
    for i in range(folds):
        savenameTrain = savebase + '_Train' + str(i) + '.npy'
        savenameTest = savebase + '_Test' + str(i) + '.npy'
        train = files[:testIndices[i,0]] + files[testIndices[i,1]:]
        test = files[testIndices[i,0]:testIndices[i,1]]
        np.save(savenameTrain,train)
        np.save(savenameTest,test)
    
    return

def saveFileNamesBySlice(rootpath,paths,folds,savebase):
    '''
    paths should not end with a / but rootpath should and paths don't start with /
    '''
    random.shuffle(paths)
    numPerFold = len(paths)//folds
    testIndices = np.zeros((folds,2))
    for i in range(folds):
        testIndices[i,0] = numPerFold*i
        testIndices[i,1] = numPerFold*(i+1)
    testIndices[-1,-1] = len(paths)
    testIndices = testIndices.astype(int)
    
    for i in range(folds):
        savenameTrain = savebase + '_Train' + str(i) + '.npy'
        savenameTest = savebase + '_Test' + str(i) + '.npy'
        trainRoot = paths[:testIndices[i,0]] + paths[testIndices[i,1]:]
        testRoot = paths[testIndices[i,0]:testIndices[i,1]]
        print("Number in train and test: " + str(len(trainRoot)) + ", " + str(len(testRoot)))
        train = []
        test = []
        for path in trainRoot:
            train = train + [path+'/'+f for f in os.listdir(rootpath+path) if 'csv' not in f]
        for path in testRoot:
            test = test + [path+'/'+f for f in os.listdir(rootpath+path) if 'csv' not in f]
        print("Number in train and test: " + str(len(train)) + ", " + str(len(test)))

        np.save(savenameTrain,train)
        np.save(savenameTest,test)
    return

def generateAllTrain(rootpath,paths,savebase):
    train = []
    for p in paths:
        train = train + [p+'/'+f for f in os.listdir(rootpath+p) if 'csv' not in f]
    np.save(savebase,train)
    return
        

def outputImages(testPath,numImages,modelPath,savePath,testFilePath):
    '''
    Take set of test samples
    select numImages at random
    run full 
    '''
    files = np.load(testPath)
    np.random.shuffle(files) # randomly permutes
    for i in range(numImages):
        f = files[i]
        fullF = testFilePath + f
        fullS = savePath + 'Prob_Map_' + f
        pmap = apply.apply(fullF,modelPath)
        np.save(fullS,pmap)
            #print("Segmenting biomarkers on downsampling version....")
        segmented=fe.cv_watershed(pmap)
        np.save(savePath + 'Segmented_' + f,segmented)
      
        descriptions=fe.get_descriptions(segmented)
        descriptions.to_csv(savePath + 'description_' + f.split('.')[0] + '.csv',index=False)
        printOutputImages(fullF,segmented,savePath+'comparisonSeg_' + f + '.png',savePath + 'description_' + f.split('.')[0] + '.csv')
    return

def outputWholeImages(testImage,segMan,bioMan,segML,description,savename):
    '''
    plot original image, segmentation in red, biomarkers in green,then segmentation of ours 
    '''
    histo = plt.imread(testImage)
    histo = histo.astype('float32')/255.0
    f,ax = plt.subplots(1,4,figsize =(16,8))
    ax[0].imshow(histo,origin='lower')
    ax[0].set_title('Original Histology')
    Is_man = np.transpose(np.squeeze(np.asanyarray(nib.load(segMan).dataobj)))
    Ib_man = np.transpose(np.squeeze(np.asanyarray(nib.load(bioMan).dataobj)))
    I_man = np.zeros((Is_man.shape[0],Is_man.shape[1],3))
    I_man[...,0] = np.squeeze(Is_man)
    I_man[...,1] = np.squeeze(Ib_man)
    ax[1].imshow(I_man,origin='lower')
    ax[1].set_title('Manual Segmentation ' + str(np.sum(Ib_man)) + ' Tau pixels')
    Is = np.load(segML)
    I_ml = np.zeros((Is.shape[0],Is.shape[1],3))
    I_ml[...,0] = np.squeeze(Is_man)
    I_ml[...,1] = np.squeeze((Is > 1).astype('float32'))
    ax[2].imshow(I_ml,origin='lower')
    ax[2].set_title('Predicted Segmentation ' + str(np.sum(Is > 1)) + ' Tau pixels')
    I_ml[...,0] = np.squeeze(Ib_man)
    Is_inSZ = (Is>1).astype('float32')*(Is_man)
    I_ml[...,1] = np.squeeze(Is_inSZ) # plot just tau tangles in regions of interest
    ax[3].imshow(I_ml,origin='lower')
    ax[3].set_title('Difference in Seg ' + str(np.sum(Is_inSZ != Ib_man)) + ' out of ' + str(np.sum(Is_man)) + ' = ' + str(np.around(np.sum(Is_inSZ != Ib_man)/(np.sum(Is_man)),2)))
    f.savefig(savename+'.png',dpi=300)
    f,ax = plt.subplots(1,4,figsize=(16,8))
    Inew = np.zeros_like(I_ml)
    Inew[...,0] = np.squeeze(Is_man)
    Inew[...,1] = np.squeeze(Ib_man)
    Inew[...,2] = Is_inSZ
    #Inew = Inew[np.in1d(Inew[...,0],np.asarray([1]))]
    InewR = Inew[Inew[...,0]>0] # raveled
    print(InewR.shape)
    histoIm = np.zeros((histo.shape[0],histo.shape[1],4))
    histoIm[...,0:3] = histo
    histoIm[...,-1] = Is_man
    #histoIm = histoIm[np.in1d(histoIm[...,-1],np.asarray([1]))]
    histoImR = histoIm[histoIm[...,-1]>0]
    print(histoImR.shape)
    Inew = np.reshape(InewR,(InewR.shape[0]//200,200,3))
    histoIm = np.reshape(histoImR,(histoImR.shape[0]//200,200,4))
    ax[0].imshow(histoIm[...,0:3],origin='lower')
    ax[0].set_title('Tiles of Original Histology')
    ax[1].imshow(Inew,origin='lower')
    ax[1].set_title('Green Manual, Blue ML')
    ax[2].imshow(histoIm[...,0:3],origin='lower')
    ax[2].imshow(Inew[...,1],cmap='gray',alpha=0.5)
    ax[2].set_title('Manual segmentations')
    ax[3].imshow(histoIm[...,0:3],origin='lower')
    ax[3].set_title('ML segmentations')
    ax[3].imshow(Inew[...,2],cmap='gray',alpha=0.5)
    f.savefig(savename+'2.png',dpi=300)
    return

def outputBlocks(testImage,segMan,bioMan,segML,description,savename):
    Is_man = np.transpose(np.squeeze(np.asanyarray(nib.load(segMan).dataobj)))
    x0,x1 = findLeftCorner(Is_man)
    
    Ib_man = np.transpose(np.squeeze(np.asanyarray(nib.load(bioMan).dataobj)))
    histo = plt.imread(testImage)
    histo = histo.astype('float32')/255.0
    
    Is = np.load(segML)
    Is = Is > 1 # make all segmentations 1 
    
    fig = plt.figure(figsize=(9,3*x0.shape[0])) # Notice the equal aspect ratio
    ax = [fig.add_subplot(x0.shape[0],3,i+1) for i in range(3*x0.shape[0])]
    fig.suptitle('Sample Zones with Manual (Green) and Predicted (Red)',fontsize=10)

    i = 0
    for a in range(0,len(ax),3):
        ax[a].imshow(histo[x0[i]:x0[i]+200,x1[i]:x1[i]+200])
        #ax[a].set_title('Original Histo ' + str(i),size=8)
        ax[a+1].imshow(Ib_man[x0[i]:x0[i]+200,x1[i]:x1[i]+200],cmap='Greens',alpha=0.5)
        ax[a+1].imshow(Is[x0[i]:x0[i]+200,x1[i]:x1[i]+200],cmap='Reds',alpha=0.5)
        #ax[a+1].set_title('Green Truth, Red Predicted ' + str(i),size=8)
        ax[a+2].imshow(histo[x0[i]:x0[i]+200,x1[i]:x1[i]+200])
        ax[a+2].imshow(Ib_man[x0[i]:x0[i]+200,x1[i]:x1[i]+200],cmap='Greens',alpha=0.3)
        ax[a+2].imshow(Is[x0[i]:x0[i]+200,x1[i]:x1[i]+200],cmap='Reds',alpha=0.3)
        #ax[a+2].set_title('Green Truth, Red Predicted ' + str(i),size=8)

        #ax[a].set_aspect('equal')
        #ax[a+1].set_aspect('equal')
        #ax[a+2].set_aspect('equal')
        i = i +1

    fig.subplots_adjust(wspace=0, hspace=0)
    fig.savefig(savename+'_All.png',dpi=300)
    '''
    f,ax = plt.subplots(x0.shape[0],3,figsize=(20,4))
    for i in range(x0.shape[0]):
        ax[i,0].imshow(histo[x0[i]:x0[i]+200,x1[i]:x1[i]+200])
        ax[i,0].set_title('Original Histo ' + str(i),size=8)
        ax[i,1].imshow(Ib_man[x0[i]:x0[i]+200,x1[i]:x1[i]+200],cmap='Greens',alpha=0.5)
        ax[i,1].imshow(Is[x0[i]:x0[i]+200,x1[i]:x1[i]+200],cmap='Reds',alpha=0.5)
        ax[i,1].set_title('Green Truth, Red Predicted ' + str(i),size=8)
        ax[i,2].imshow(histo[x0[i]:x0[i]+200,x1[i]:x1[i]+200])
        ax[i,2].imshow(Ib_man[x0[i]:x0[i]+200,x1[i]:x1[i]+200],cmap='Greens',alpha=0.3)
        ax[i,2].imshow(Is[x0[i]:x0[i]+200,x1[i]:x1[i]+200],cmap='Reds',alpha=0.3)
        ax[i,2].set_title('Green Truth, Red Predicted ' + str(i),size=8)
    f.savefig(savename+'_All.png',dpi=300)
    '''
    return    

def findLeftCorner(segMan):
    '''
    returns x0,x1 indices of left corners
    '''
    test = np.zeros((segMan.shape[0]+2,segMan.shape[1]+2,4))
    test[1:-1,1:-1,0] = segMan # what is on the spot
    test[1:-1,0:-2,1] = segMan # what is to the right
    test[1:-1,2:,2] = segMan #what is to the left
    test[2:,1:-1,3] = segMan # what is up
    
    x0,x1 = np.where((test[...,0] > 0)*(test[...,1] > 0)*(test[...,2] == 0)*(test[...,3] == 0))
    return x0,x1
    


def printOutputImages(fullTestP,segmented,savepath,descriptionFile):
    picTest = np.load(fullTestP)
    picTestIm = picTest[:,:,0:3]
    picTestL = picTest[:,:,3]
    print(np.shape(picTest))
    ds = np.genfromtxt(descriptionFile,delimiter=',')
    x = []
    y = []
    a = []
    if (ds.shape[0] > 1):
        x = ds[1:,7]
        y = ds[1:,8]
        a = ds[1:,9]*4/np.pi
    f,ax = plt.subplots(1,4,figsize=(16,8))
    ax[0].imshow(picTestIm,origin='lower')
    ax[0].set_title('Original Image')
    ax[1].imshow(picTestL,cmap='gray',vmin=0,vmax=1,origin='lower')
    print("max and min of manual")
    print(np.unique(picTestL))
    ax[1].set_title('Manual Segmentation')
    ax[2].imshow(segmented > 1,cmap='gray',vmin=0,vmax=1,origin='lower')
    ax[2].set_title('Predicted Segmentation')
    ax[3].scatter(x,y,marker='.',s=a)
    ax[3].set_xlim([0,132])
    ax[3].set_ylim([0,132])
    ax[3].set_title('Centers of Tangles')
    ax[3].set_aspect('equal')
    f.savefig(savepath,dpi=500)
    return