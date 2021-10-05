#!/bin/bash

# Script for running train on all of training data (for one brain)

# Run Line for each: python3 train.py /path/to/training/data batch_size epochs path/to/save
cd /cis/home/kstouff4/Documents/ADproject_DJT2/ADproject/unet/

# First generate all of training data from single brain 
python3 -c 'import crossValidate as crossV; savebase="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Brain5Train.npy"; pathroot="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples/";paths=["Brain5/Block1/Tau/L5","Brain5/Block1/Tau/L20","Brain5/Block1/Tau/L35","Brain5/Block1/Tau/L50","Brain5/Block2/Tau/L5","Brain5/Block2/Tau/L20","Brain5/Block2/Tau/L35","Brain5/Block2/Tau/L50","Brain5/Block2/Tau/L65","Brain5/Block3/Tau/L3","Brain5/Block3/Tau/L17","Brain5/Block3/Tau/L32"]; crossV.generateAllTrain(pathroot,paths,savebase);'


#python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/unet_tau_Brain2+5.pth" None

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain5All.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Brain5Train.npy"