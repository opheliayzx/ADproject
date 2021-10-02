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

import feature_extraction as fe

def saveFileNames(path,folds,savebase):
    '''
    Divides files in path into folds folds 
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