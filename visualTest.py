# Libraries to Import
import numpy as np
import math
import sys
import matplotlib.pyplot as plt
import os
import glob
import scipy.interpolate as spi
import scipy as sp
# these methods from scipy will be used for displaying some images
from scipy.linalg import eigh
from scipy.stats import norm

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

import vtk
from vtk.util.numpy_support import numpy_to_vtk
from vtk.numpy_interface import dataset_adapter as dsa
from vtk.util.numpy_support import vtk_to_numpy

###################################################################
# Helper Functions

def load_image_only(imagename, d0, d1):
    '''
    Args:
    imagename (full path)
    d0, d1 = mm/pixel in 0th and 1st directions
    '''
    I_ = plt.imread(imagename);
    
    I_ = I_.astype('float32')/255.0;
    '''
    f,ax = plt.subplots()
    ax.imshow(I_,origin='lower');
    ax.set_xlabel("x1 = cols")
    ax.set_ylabel("x0 = rows")
    ax.set_title("2D image read with Matplotlib")
    '''

    #Katie: create evenly spaced values along each axis (assume no scaling needed for brain images)
    x0 = np.arange(I_.shape[0],dtype='float32')*d0 # scale to appropriate pixel to tissue size
    x1 = np.arange(I_.shape[1],dtype='float32')*d1 
    x0 -= np.mean(x0) # center at origin: 0,0
    x1 -= np.mean(x1)

    # f.canvas.draw()
    
    return x0,x1,I_


################################################################
# Testing Functions

def visualize1mm(descriptionCSV,probMap,origHisto,start,savename):
    '''
    
    '''
    
    x0,x1,I = load_image_only(origHisto,0.00208,0.00208)
    pMap = np.load(probMap)
    
    tauSize = np.zeros_like(pMap)
    tauInd = np.zeros_like(pMap)
    descriptionFile = np.genfromtxt(descriptionCSV,delimiter=',')
    rows = descriptionFile.shape[0]
    print(rows)
    for r in range(1,rows):
        gCenterX = int(descriptionFile[r,7]) #(col coord??)
        gCenterY = int(descriptionFile[r,8])
        tauInd[gCenterY,gCenterX] = 1
        tauSize[gCenterY,gCenterX] = descriptionFile[r,9]
   
    for st in start:
    
        # Plot original image, histology prob map, and scatter of tangles with 4/pi * area (size)
        f,ax = plt.subplots(1,3,figsize=(16,10))
        I_1mm = I[st:st+481,st:st+481,...]
        p_1mm = pMap[st:st+481,st:st+481]
        t_1mm = tauInd[st:st+481,st:st+481]
        a_1mm = tauSize[st:st+481,st:st+481]
        rt,ct = np.where(t_1mm > 0)
        ax[0].imshow(I_1mm)
        ax[0].set_title("Original Histology at " + str(st))
        ax[1].imshow(p_1mm)
        ax[1].set_title("Prob Map at " + str(st))
        ax[2].imshow(I_1mm)
        for i in range(rt.shape[0]):
            ax[2].scatter(ct[i],rt[i],s=4*a_1mm[rt[i],ct[i]]/np.pi,facecolors='none', edgecolors='r')
        ax[2].set_title("Tau tangles at " + str(st))
        f.savefig(savename+str(st)+'.png',dpi=300)
    return