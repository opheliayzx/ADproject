#!/bin/bash

# Script to run 10 fold Cross Validation and spit out accuracy measures to terminal ( save output to text file)

# Generate 10 separate subfolders 

# Run Line for each: python3 train.py /path/to/training/data batch_size epochs path/to/save
cd /cis/home/kstouff4/Documents/ADproject/unet/

python3 -c 'import crossValidate as crossV; savebase="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923"; num=10; path="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples"; crossV.saveFileNames(path,num,savebase);'

# train and test all 10 folds and save output to single output file

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_0.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Train0.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_TrainingStats.txt"

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_1.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Train1.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_TrainingStats.txt"

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_2.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Train2.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_TrainingStats.txt"

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_3.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Train3.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_TrainingStats.txt"

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_4.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Train4.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_TrainingStats.txt"

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_5.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Train5.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_TrainingStats.txt"

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_6.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Train6.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_TrainingStats.txt"

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_7.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Train7.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_TrainingStats.txt"

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_8.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Train8.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_TrainingStats.txt"

python3 train.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples" 16 100  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_9.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Train9.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_TrainingStats.txt"

# Test all models and redirect output to text file 
python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_0.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test0.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_1.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test1.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_2.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test2.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_3.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test3.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_4.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test4.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_5.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test5.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_6.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test6.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_7.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test7.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_8.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test8.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Results.txt"

python3 test.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5Samples"  "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV0923/unet_tau_Brain2_9.pth" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Test9.npy" >> "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2+5SamplesCV/cv10_0923_Results.txt"

