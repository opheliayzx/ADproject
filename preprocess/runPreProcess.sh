#!/bin/bash

##########CONVENTION FOR TRAINING DATA###############
# Save samples in own brain and block and stain and location folder
# run train even with all samples using list of file names specifically (i.e. cv as the list of all files)


# Script for running pre process on all of training data 
TRAINING_ROOT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/"
TRAINING_DIR="BrainSamples"
BRAIN2="/Brain2"
BLOCK1="/Block1"
BLOCK2="/Block2"
BLOCK3="/Block3"
BRAIN5="/Brain5"
STAIN="/Tau"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN
mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN


# Run Line for each: python3 create_td.py 500 #starting from BaseImg path/to/biomarker path/to/save
cd /cis/home/kstouff4/Documents/ADproject_DJT2/ADproject/preprocess/

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L11"
python3 create_td.py 500 0 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip1/Tau/BRC2614 AD Block1 PHF-1 Location 11_corrected.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block1_L11_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L11"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L15"
python3 create_td.py 500 500 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip1/Tau/BRC2614 AD Block1 PHF-1 Location 15_corrected.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block1_L15_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L15"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L18"
python3 create_td.py 500 1000 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip1/Tau/BRC2614 AD Block1 PHF-1 Location 18_corrected.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block1_L18_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L18"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L5"
python3 create_td.py 500 1500 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip1/Tau/BRC2614 AD Block1 PHF-1 Location 5_corrected.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block1_L5_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L5"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L6"
python3 create_td.py 125 2000 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/4/Base.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/4/" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L6"

python3 create_td.py 125 2125 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/5/Base.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/5/" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L6"

python3 create_td.py 125 2250 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/6/Base.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/6/" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L6"

python3 create_td.py 125 2375 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/7/Base.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/7/" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK1$STAIN"/L6"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN"/L11"
python3 create_td.py 500 2500 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip2/AD_Hip2/Tau/BRC2614 AD Block2 PHF-1 Location 11_corrected.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block2_L11_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN"/L11"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN"/L14"
python3 create_td.py 500 3000 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip2/AD_Hip2/Tau/BRC2614 AD Block2 PHF-1 Location 14_corrected.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block2_L14_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN"/L14"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN"/L17"
python3 create_td.py 500 3500 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip2/AD_Hip2/Tau/BRC2614 AD Block2 PHF-1 Location 17_corrected.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block2_L17_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN"/L17"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN"/L5"
python3 create_td.py 500 4000 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip2/AD_Hip2/Tau/BRC2614 AD Block2 PHF-1 Location 5_corrected.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block2_L5_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN"/L5"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN"/L8"
python3 create_td.py 500 4500 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip2/AD_Hip2/Tau/BRC2614 AD Block2 PHF-1 Location 8_corrected.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block2_L8_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK2$STAIN"/L8"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L5"
python3 create_td.py 500 5000 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip3/AD_Hip3/Tau/BRC2614 AD Block3 PHF-1 Location 5_corrected.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block3_L5_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L5"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L11"
python3 create_td.py 125 5500 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip3/AD_Hip3/Tau/BRC2614 AD Block3 PHF-1 Location 11_corrected_rowblock_0_of_2_colblock_0_of_2.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block3_L11_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L11"

python3 create_td.py 125 5625 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip3/AD_Hip3/Tau/BRC2614 AD Block3 PHF-1 Location 11_corrected_rowblock_0_of_2_colblock_1_of_2.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block3_L11_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L11"

python3 create_td.py 125 5750 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip3/AD_Hip3/Tau/BRC2614 AD Block3 PHF-1 Location 11_corrected_rowblock_1_of_2_colblock_0_of_2.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block3_L11_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L11"

python3 create_td.py 125 5875 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip3/AD_Hip3/Tau/BRC2614 AD Block3 PHF-1 Location 11_corrected_rowblock_1_of_2_colblock_1_of_2.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block3_L11_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L11"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L8"
python3 create_td.py 125 6000 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip3/AD_Hip3/Tau/BRC2614 AD Block3 PHF-1 Location 8_corrected_rowblock_0_of_2_colblock_0_of_2.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block3_L8_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L8"

python3 create_td.py 125 6125 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip3/AD_Hip3/Tau/BRC2614 AD Block3 PHF-1 Location 8_corrected_rowblock_0_of_2_colblock_1_of_2.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block3_L8_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L8"

python3 create_td.py 125 6250 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip3/AD_Hip3/Tau/BRC2614 AD Block3 PHF-1 Location 8_corrected_rowblock_1_of_2_colblock_0_of_2.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block3_L8_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L8"

python3 create_td.py 125 6375 "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip3/AD_Hip3/Tau/BRC2614 AD Block3 PHF-1 Location 8_corrected_rowblock_1_of_2_colblock_1_of_2.tif" "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Brain2_Block3_L8_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN2$BLOCK3$STAIN"/L8"

## Brain 5 Samples
ROOT_DIR="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain5/histology/down_000/"
BLOCK_DIR="AD_Hip1/"
STAIN2="Tau/"
TRAIN_DATA_DIR="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L5"
python3 create_td.py 125 6500 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L5 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L5_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L5"

python3 create_td.py 125 6625 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L5 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L5_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L5"

python3 create_td.py 125 6750 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L5 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L5_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L5"

python3 create_td.py 125 6875 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L5 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L5_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L5"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L20"
python3 create_td.py 125 7000 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L20 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L20_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L20"

python3 create_td.py 125 7125 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L20 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L20_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L20"

python3 create_td.py 125 7250 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L20 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L20_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L20"

python3 create_td.py 125 7375 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L20 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L20_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L20"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L35"
python3 create_td.py 125 7500 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L35 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L35_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L35"

python3 create_td.py 125 7625 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L35 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L35_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L35"

python3 create_td.py 125 7750 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L35 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L35_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L35"

python3 create_td.py 125 7875 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L35 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L35_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L35"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L50"
python3 create_td.py 125 8000 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L50 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L50_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L50"

python3 create_td.py 125 8125 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L50 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L50_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L50"

python3 create_td.py 125 8250 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L50 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L50_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L50"

python3 create_td.py 125 8375 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 1 L50 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block1_L50_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK1$STAIN"/L50"

BLOCK_DIR="AD_Hip2/"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L5"
python3 create_td.py 125 8500 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L5 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L5_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L5"

python3 create_td.py 125 8625 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L5 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L5_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L5"

python3 create_td.py 125 8750 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L5 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L5_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L5"

python3 create_td.py 125 8875 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L5 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L5_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L5"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L20"
python3 create_td.py 125 9000 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L20 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L20_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L20"

python3 create_td.py 125 9125 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L20 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L20_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L20"

python3 create_td.py 125 9250 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L20 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L20_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L20"

python3 create_td.py 125 9375 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L20 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L20_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L20"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L35"
python3 create_td.py 125 9500 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L35 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L35_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L35"

python3 create_td.py 125 9625 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L35 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L35_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L35"

python3 create_td.py 125 9750 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L35 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L35_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L35"

python3 create_td.py 125 9875 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L35 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L35_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L35"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L50"
python3 create_td.py 125 10000 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L50 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L50_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L50"

python3 create_td.py 125 10125 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L50 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L50_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L50"

python3 create_td.py 125 10250 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L50 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L50_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L50"

python3 create_td.py 125 10375 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L50 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L50_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L50"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L65"
python3 create_td.py 125 10500 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L65 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L65_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L65"

python3 create_td.py 125 10625 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L65 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L65_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L65"

python3 create_td.py 125 10750 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L65 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L65_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L65"

python3 create_td.py 125 10875 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 2 L65 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block2_L65_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK2$STAIN"/L65"

BLOCK_DIR="AD_Hip3/"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L3"
python3 create_td.py 125 11000 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L3 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L3_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L3"

python3 create_td.py 125 11125 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L3 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L3_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L3"

python3 create_td.py 125 11250 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L3 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L3_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L3"

python3 create_td.py 125 11375 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L3 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L3_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L3"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L17"
python3 create_td.py 125 11500 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L17 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L17_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L17"

python3 create_td.py 125 11625 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L17 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L17_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L17"

python3 create_td.py 125 11750 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L17 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L17_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L17"

python3 create_td.py 125 11875 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L17 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L17_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L17"

mkdir $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L32"
python3 create_td.py 125 12000 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L32 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L32_rowblock_0_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L32"

python3 create_td.py 125 12125 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L32 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L32_rowblock_1_of_2_colblock_0_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L32"

python3 create_td.py 125 12250 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L32 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L32_rowblock_0_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L32"

python3 create_td.py 125 12375 $ROOT_DIR$BLOCK_DIR$STAIN2"Brain 5-Block 3 L32 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $TRAIN_DATA_DIR"Brain5_Block3_L32_rowblock_1_of_2_colblock_1_of_2_" $TRAINING_ROOT$TRAINING_DIR$BRAIN5$BLOCK3$STAIN"/L32"
