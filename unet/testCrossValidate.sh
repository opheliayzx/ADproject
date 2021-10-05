#!/bin/bash

#mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5/TestCV0923/'
#mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5/TestCV0923/0/'
#mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5/TestCV0923/0/Tau/'

DIR_ROOT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples/"
BLOCK_ROOT="0/"
STAIN="Tau/"
MODEL="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_0.pth"
SAVE_ROOT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5/TestCV0923/"
TEST_INPUT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test0.npy"

#python3 -c 'import crossValidate as cssv; cssv.outputImages("/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test0.npy",10,"/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_0.pth","/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5/TestCV0923/0/Tau/","/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples/");' 

python3 -c 'import crossValidate as cssv; root="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/"; rootOut="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5CV1002/"; rootTrain="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau/";testIm = ["AD_Hip1/Tau/BRC2614 AD Block1 PHF-1 Location 15_corrected.tif","AD_Hip1/Tau/BRC2614 AD Block1 PHF-1 Location 18_corrected.tif","AD_Hip1/Tau/BRC2614 AD Block1 PHF-1 Location 11_corrected.tif","AD_Hip2/AD_Hip2/Tau/BRC2614 AD Block2 PHF-1 Location 14_corrected.tif","AD_Hip2/AD_Hip2/Tau/BRC2614 AD Block2 PHF-1 Location 5_corrected.tif"];segML=["Brain2_Block1_L15_Segmented.npy","Brain2_Block1_L18_Segmented.npy","Brain2_Block1_L11_Segmented.npy","Brain2_Block2_L14_Segmented.npy","Brain2_Block2_L5_Segmented.npy"]; des=["Brain2_Block1_L15_description.csv","Brain2_Block1_L18_description.csv","Brain2_Block1_L11_description.csv","Brain2_Block2_L14_description.csv","Brain2_Block2_L5_description.csv"];  cssv.outputBlocks(root+testIm[4],rootTrain+"Brain2_Block2_L5_SampleZone.nii.gz",rootTrain+"Brain2_Block2_L5_Biomarker.nii.gz",rootOut+segML[4],des[4],rootOut+"Brain2_Block2_L5_CompareSegs")'