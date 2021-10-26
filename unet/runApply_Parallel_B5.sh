#!/bin/bash
mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain5/'
mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain5/AD_Hip1/'
mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain5/AD_Hip2/'
mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain5/AD_Hip3/'

mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain5/AD_Hip1/Tau/'
mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain5/AD_Hip2/Tau/'
mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain5/AD_Hip3/Tau/'


DIR_ROOT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain5/histology/down_000/"
BLOCK_ROOT="AD_Hip1/"
STAIN="Tau/"
MODEL="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/unet_tau_Brain5All.pth"
SAVE_ROOT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain5/"

##python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L1 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L1_Prob_map.npy" 

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L5 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L5_Prob_map.npy" 

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L10 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L10_Prob_map.npy" 

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L15 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L15_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L20 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L20_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L25 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L25_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L30 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L30_Prob_map.npy" 

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L35 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L35_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L40 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L40_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L45 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L45_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L50 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L50_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L55 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L55_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 1 L60 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L60_Prob_map.npy"


cd ../FeatureExtraction

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L1_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L1_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L1_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L5_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L5_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L5_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L10_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L10_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L10_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L15_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L15_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L15_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L20_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L20_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L20_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L25_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L25_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L25_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L30_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L30_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L30_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L35_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L35_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L35_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L40_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L40_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L40_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L45_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L45_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L45_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L50_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L50_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L50_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L55_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L55_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L55_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L60_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L60_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L60_description.csv" >/dev/null 2>&1 &

# Second Block
cd ../unet

BLOCK_ROOT="AD_Hip2/"
STAIN="Tau/"
#MODEL="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/unet_tau_Brain2+5.pth"
#SAVE_ROOT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5/Brain5/"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L1 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L1_Prob_map.npy" 

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L5 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L5_Prob_map.npy" 

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L10 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L10_Prob_map.npy" 

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L15 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L15_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L20 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L20_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L25 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L25_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L30 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L30_Prob_map.npy" 

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L35 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L35_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L40 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L40_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L45 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L45_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L50 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L50_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L55 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L55_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L60 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L60_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 2 L65 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L65_Prob_map.npy"


cd ../FeatureExtraction

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L1_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L1_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L5_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L5_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L5_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L10_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L10_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L10_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L15_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L15_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L15_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L20_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L20_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L20_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L25_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L25_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L25_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L30_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L30_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L30_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L35_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L35_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L35_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L40_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L40_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L40_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L45_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L45_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L45_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L50_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L50_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L50_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L55_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L55_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L55_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L60_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L60_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L60_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L65_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L65_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L65_description.csv" >/dev/null 2>&1 &

cd ../unet

BLOCK_ROOT="AD_Hip3/"
#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 3 L3 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L3_Prob_map.npy" 

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 3 L7 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L7_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 3 L12 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L12_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 3 L17 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L17_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 3 L22 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L22_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 3 L27 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L27_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 3 L32 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L32_Prob_map.npy"

#python3 apply.py $DIR_ROOT$BLOCK_ROOT$STAIN"Brain 5-Block 3 L37 PHF-1_crop.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"L37_Prob_map.npy"


cd ../FeatureExtraction

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L3_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L3_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L3_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L7_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L7_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L7_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L12_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L12_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L12_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L17_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L17_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L17_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L22_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L22_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L22_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L27_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L27_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L27_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L32_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L32_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L32_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"L37_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L37_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"L37_description.csv" >/dev/null 2>&1 &
