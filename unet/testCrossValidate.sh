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

python3 -c 'import crossValidate as cssv; root="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain5/histology/down_000/"; rootOut="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5CV1002/"; rootTrain="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau/";testIm = ["AD_Hip2/Tau/Brain 5-Block 2 L50 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif","AD_Hip2/Tau/Brain 5-Block 2 L50 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif","AD_Hip2/Tau/Brain 5-Block 2 L50 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif","AD_Hip2/Tau/Brain 5-Block 2 L50 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif"];segML=["Brain5_Block2_L50_0_0_Segmented.npy","Brain5_Block2_L50_0_1_Segmented.npy","Brain5_Block2_L50_1_0_Segmented.npy","Brain5_Block2_L50_1_1_Segmented.npy"]; des=["Brain5_Block2_L50_0_0_description.csv","Brain5_Block2_L50_0_1_description.csv","Brain5_Block2_L50_1_0_description.csv","Brain5_Block2_L50_1_1_description.csv"];  cssv.outputBlocks(root+testIm[3],rootTrain+"Brain5_Block2_L50_rowblock_1_of_2_colblock_1_of_2_SampleZone.nii.gz",rootTrain+"Brain5_Block2_L50_rowblock_1_of_2_colblock_1_of_2_Biomarker.nii.gz",rootOut+segML[3],des[3],rootOut+"Brain5_Block2_L50_1_1_CompareSegs")'