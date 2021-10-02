#!/bin/bash

mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5/TestCV0923/'
mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5/TestCV0923/0/'
mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5/TestCV0923/0/Tau/'

DIR_ROOT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples/"
BLOCK_ROOT="0/"
STAIN="Tau/"
MODEL="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_0.pth"
SAVE_ROOT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5/TestCV0923/"
TEST_INPUT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test0.npy"

python3 -c 'import crossValidate as cssv; cssv.outputImages("/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test0.npy",10,"/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_0.pth","/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5/TestCV0923/0/Tau/","/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples/");' 
