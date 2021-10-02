#!/bin/bash

# Script for running train on all of training data (for one brain)

# Run Line for each: python3 train.py /path/to/training/data batch_size epochs path/to/save
cd /cis/home/kstouff4/Documents/ADproject/unet/

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/unet_tau_Brain2+5.pth" None
