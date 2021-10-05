#!/bin/bash

# Script to run 10 fold Cross Validation and spit out accuracy measures to terminal ( save output to text file)

# Generate 10 separate subfolders 
mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/'
# Run Line for each: python3 train.py /path/to/training/data batch_size epochs path/to/save
cd /cis/home/kstouff4/Documents/ADproject_DJT2/ADproject/unet/

#python3 -c 'import crossValidate as crossV; savebase="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002"; num=10; pathroot="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples/";paths=["Brain2/Block1/Tau/L5","Brain2/Block1/Tau/L6","Brain2/Block1/Tau/L11","Brain2/Block1/Tau/L15","Brain2/Block1/Tau/L18","Brain2/Block2/Tau/L5","Brain2/Block2/Tau/L8","Brain2/Block2/Tau/L11","Brain2/Block2/Tau/L14","Brain2/Block2/Tau/L17","Brain2/Block3/Tau/L5","Brain2/Block3/Tau/L8","Brain2/Block3/Tau/L11","Brain5/Block1/Tau/L5","Brain5/Block1/Tau/L20","Brain5/Block1/Tau/L35","Brain5/Block1/Tau/L50","Brain5/Block2/Tau/L5","Brain5/Block2/Tau/L20","Brain5/Block2/Tau/L35","Brain5/Block2/Tau/L50","Brain5/Block2/Tau/L65","Brain5/Block3/Tau/L3","Brain5/Block3/Tau/L17","Brain5/Block3/Tau/L32"]; crossV.saveFileNamesBySlice(pathroot,paths,num,savebase);'

# train and test all 10 folds and save output to single output file
echo "training set 1"
python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_0.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Train0.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_TrainingStats.txt"
echo "training set 2"
python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_1.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Train1.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_TrainingStats.txt"
echo "training set 3"
python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_2.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Train2.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_TrainingStats.txt"
echo "training set 4"
python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_3.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Train3.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_TrainingStats.txt"
echo "training set 5"
python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_4.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Train4.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_TrainingStats.txt"
echo "training set 6"
python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_5.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Train5.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_TrainingStats.txt"
echo "training set 7"
python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_6.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Train6.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_TrainingStats.txt"
echo "training set 8"
python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_7.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Train7.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_TrainingStats.txt"
echo "training set 9"
python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_8.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Train8.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_TrainingStats.txt"
echo "training set 10"
python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_9.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Train9.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_TrainingStats.txt"

# Test all models and redirect output to text file 
python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_0.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Test0.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_1.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Test1.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_2.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Test2.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_3.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Test3.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_4.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Test4.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_5.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Test5.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_6.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Test6.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_7.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Test7.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_8.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Test8.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/BrainSamples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain2_9.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Test9.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_1002_Results.txt"

