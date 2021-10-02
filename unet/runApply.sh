#!/bin/bash

mkdir /cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2Block2/
mkdir /cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2Block2/AD_Hip1/
mkdir /cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2Block2/AD_Hip2/
mkdir /cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2Block2/AD_Hip3/

mkdir /cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2Block2/AD_Hip1/Tau/
mkdir /cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2Block2/AD_Hip2/Tau/
mkdir /cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2Block2/AD_Hip3/Tau/

DIR_ROOT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/"
BLOCK_ROOT="AD_Hip2/"
STAIN="Tau/"
MODEL="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/unet_tau_Brain2Block2.pth"
SAVE_ROOT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2Block2/"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 10_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_10_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 11_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_11_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 12_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_12_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 13_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_13_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 14_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_14_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 15_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_15_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 16_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_16_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 17_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_17_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 18_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_18_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 19_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_19_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 5_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_5_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 6_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_6_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 7_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_7_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 8_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_8_Prob_map.npy"

python3 apply.py $DIR_ROOT$BLOCK_ROOT$BLOCK_ROOT$STAIN"BRC2614 AD Block2 PHF-1 Location 9_corrected.tif" $MODEL $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_9_Prob_map.npy"


cd ../FeatureExtraction

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_10_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_10_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_10_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_11_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_11_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_11_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_12_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_12_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_12_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_8_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_8_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_8_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_13_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_13_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_13_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_14_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_14_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_14_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_15_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_15_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_15_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_16_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_16_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_16_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_17_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_17_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_17_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_18_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_18_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_18_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_19_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_19_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_19_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_5_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_5_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_5_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_6_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_6_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_6_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_7_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_7_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_7_description.csv"

python3 feature_extraction.py $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_9_Prob_map.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_9_Segmented.npy" $SAVE_ROOT$BLOCK_ROOT$STAIN"Location_9_description.csv"


