#!/bin/bash

mkdir '/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5CV1002/'

DIR_ROOT2="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/"
DIR_ROOT5="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain5/histology/down_000/"
BLOCK_ROOT1="AD_Hip1/"
BLOCK_ROOT2="AD_Hip2/"
BLOCK_ROOT3="AD_Hip3/"
BRAIN2="Brain2_"
BRAIN5="Brain5_"
STAIN="Tau/"
MODEL="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/Brain2+5CV1002/"
SAVE_ROOT="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ModelOutput/Brain2+5CV1002/"

# Brain 2 files 
# Block 1
#python3 apply.py $DIR_ROOT2$BLOCK_ROOT1$STAIN"BRC2614 AD Block1 PHF-1 Location 5_corrected.tif" $MODEL"unet_tau_Brain2_3.pth" $SAVE_ROOT$BRAIN2"Block1_L5_Prob_map.npy"

#python3 apply.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/4/Base.tif" $MODEL"unet_tau_Brain2_8.pth" $SAVE_ROOT$BRAIN2"Block1_L6_0_0_Prob_map.npy"

#python3 apply.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/5/Base.tif" $MODEL"unet_tau_Brain2_8.pth" $SAVE_ROOT$BRAIN2"Block1_L6_0_1_Prob_map.npy"
#python3 apply.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/6/Base.tif" $MODEL"unet_tau_Brain2_8.pth" $SAVE_ROOT$BRAIN2"Block1_L6_1_0_Prob_map.npy"
#python3 apply.py "/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau_zhenzhen/7/Base.tif" $MODEL"unet_tau_Brain2_8.pth" $SAVE_ROOT$BRAIN2"Block1_L6_1_1_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT1$STAIN"BRC2614 AD Block1 PHF-1 Location 11_corrected.tif" $MODEL"unet_tau_Brain2_1.pth" $SAVE_ROOT$BRAIN2"Block1_L11_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT1$STAIN"BRC2614 AD Block1 PHF-1 Location 15_corrected.tif" $MODEL"unet_tau_Brain2_0.pth" $SAVE_ROOT$BRAIN2"Block1_L15_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT1$STAIN"BRC2614 AD Block1 PHF-1 Location 18_corrected.tif" $MODEL"unet_tau_Brain2_0.pth" $SAVE_ROOT$BRAIN2"Block1_L18_Prob_map.npy"

# Block 2
#python3 apply.py $DIR_ROOT2$BLOCK_ROOT2$BLOCK_ROOT2$STAIN"BRC2614 AD Block2 PHF-1 Location 5_corrected.tif" $MODEL"unet_tau_Brain2_3.pth" $SAVE_ROOT$BRAIN2"Block2_L5_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT2$BLOCK_ROOT2$STAIN"BRC2614 AD Block2 PHF-1 Location 8_corrected.tif" $MODEL"unet_tau_Brain2_6.pth" $SAVE_ROOT$BRAIN2"Block2_L8_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT2$BLOCK_ROOT2$STAIN"BRC2614 AD Block2 PHF-1 Location 11_corrected.tif" $MODEL"unet_tau_Brain2_5.pth" $SAVE_ROOT$BRAIN2"Block2_L11_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT2$BLOCK_ROOT2$STAIN"BRC2614 AD Block2 PHF-1 Location 14_corrected.tif" $MODEL"unet_tau_Brain2_2.pth" $SAVE_ROOT$BRAIN2"Block2_L14_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT2$BLOCK_ROOT2$STAIN"BRC2614 AD Block2 PHF-1 Location 17_corrected.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN2"Block2_L17_Prob_map.npy"

# Block 3
#python3 apply.py $DIR_ROOT2$BLOCK_ROOT3$BLOCK_ROOT3$STAIN"BRC2614 AD Block3 PHF-1 Location 5_corrected.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN2"Block3_L5_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT3$BLOCK_ROOT3$STAIN"BRC2614 AD Block3 PHF-1 Location 8_corrected_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_6.pth" $SAVE_ROOT$BRAIN2"Block3_L8_0_0_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT3$BLOCK_ROOT3$STAIN"BRC2614 AD Block3 PHF-1 Location 8_corrected_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_6.pth" $SAVE_ROOT$BRAIN2"Block3_L8_0_1_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT3$BLOCK_ROOT3$STAIN"BRC2614 AD Block3 PHF-1 Location 8_corrected_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_6.pth" $SAVE_ROOT$BRAIN2"Block3_L8_1_0_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT3$BLOCK_ROOT3$STAIN"BRC2614 AD Block3 PHF-1 Location 8_corrected_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_6.pth" $SAVE_ROOT$BRAIN2"Block3_L8_1_1_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT3$BLOCK_ROOT3$STAIN"BRC2614 AD Block3 PHF-1 Location 11_corrected_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN2"Block3_L11_0_0_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT3$BLOCK_ROOT3$STAIN"BRC2614 AD Block3 PHF-1 Location 11_corrected_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN2"Block3_L11_0_1_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT3$BLOCK_ROOT3$STAIN"BRC2614 AD Block3 PHF-1 Location 11_corrected_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN2"Block3_L11_1_0_Prob_map.npy"

#python3 apply.py $DIR_ROOT2$BLOCK_ROOT3$BLOCK_ROOT3$STAIN"BRC2614 AD Block3 PHF-1 Location 11_corrected_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN2"Block3_L11_1_1_Prob_map.npy"

# Brain 5

python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L3 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_8.pth" $SAVE_ROOT$BRAIN5"Block3_L3_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L3 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_8.pth" $SAVE_ROOT$BRAIN5"Block3_L3_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L3 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_8.pth" $SAVE_ROOT$BRAIN5"Block3_L3_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L3 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_8.pth" $SAVE_ROOT$BRAIN5"Block3_L3_1_1_Prob_map.npy"


python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L17 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_1.pth" $SAVE_ROOT$BRAIN5"Block3_L17_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L17 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_1.pth" $SAVE_ROOT$BRAIN5"Block3_L17_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L17 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_1.pth" $SAVE_ROOT$BRAIN5"Block3_L17_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L17 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_1.pth" $SAVE_ROOT$BRAIN5"Block3_L17_1_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L32 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block3_L32_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L32 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block3_L32_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L32 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block3_L32_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT3$STAIN"Brain 5-Block 3 L32 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block3_L32_1_1_Prob_map.npy"

# Block 2
python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L5 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_7.pth" $SAVE_ROOT$BRAIN5"Block2_L5_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L5 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_7.pth" $SAVE_ROOT$BRAIN5"Block2_L5_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L5 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_7.pth" $SAVE_ROOT$BRAIN5"Block2_L5_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L5 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_7.pth" $SAVE_ROOT$BRAIN5"Block2_L5_1_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L20 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block2_L20_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L20 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block2_L20_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L20 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block2_L20_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L20 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block2_L20_1_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L35 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_7.pth" $SAVE_ROOT$BRAIN5"Block2_L35_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L35 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_7.pth" $SAVE_ROOT$BRAIN5"Block2_L35_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L35 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_7.pth" $SAVE_ROOT$BRAIN5"Block2_L35_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L35 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_7.pth" $SAVE_ROOT$BRAIN5"Block2_L35_1_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L50 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_2.pth" $SAVE_ROOT$BRAIN5"Block2_L50_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L50 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_2.pth" $SAVE_ROOT$BRAIN5"Block2_L50_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L50 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_2.pth" $SAVE_ROOT$BRAIN5"Block2_L50_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L50 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_2.pth" $SAVE_ROOT$BRAIN5"Block2_L50_1_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L65 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_5.pth" $SAVE_ROOT$BRAIN5"Block2_L65_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L65 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_5.pth" $SAVE_ROOT$BRAIN5"Block2_L65_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L65 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_5.pth" $SAVE_ROOT$BRAIN5"Block2_L65_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT2$STAIN"Brain 5-Block 2 L65 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_5.pth" $SAVE_ROOT$BRAIN5"Block2_L65_1_1_Prob_map.npy"

# Block 1
python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L5 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_4.pth" $SAVE_ROOT$BRAIN5"Block1_L5_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L5 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_4.pth" $SAVE_ROOT$BRAIN5"Block1_L5_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L5 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_4.pth" $SAVE_ROOT$BRAIN5"Block1_L5_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L5 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_4.pth" $SAVE_ROOT$BRAIN5"Block1_L5_1_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L20 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block1_L20_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L20 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block1_L20_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L20 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block1_L20_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L20 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block1_L20_1_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L35 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block1_L35_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L35 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block1_L35_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L35 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block1_L35_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L35 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_9.pth" $SAVE_ROOT$BRAIN5"Block1_L35_1_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L50 PHF-1_crop_rowblock_0_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_4.pth" $SAVE_ROOT$BRAIN5"Block1_L50_0_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L50 PHF-1_crop_rowblock_0_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_4.pth" $SAVE_ROOT$BRAIN5"Block1_L50_0_1_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L50 PHF-1_crop_rowblock_1_of_2_colblock_0_of_2.tif" $MODEL"unet_tau_Brain2_4.pth" $SAVE_ROOT$BRAIN5"Block1_L50_1_0_Prob_map.npy"

python3 apply.py $DIR_ROOT5$BLOCK_ROOT1$STAIN"Brain 5-Block 1 L50 PHF-1_crop_rowblock_1_of_2_colblock_1_of_2.tif" $MODEL"unet_tau_Brain2_4.pth" $SAVE_ROOT$BRAIN5"Block1_L50_1_1_Prob_map.npy"



cd ../FeatureExtraction
# Brain 2
#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block1_L5_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block1_L5_Segmented.npy" $SAVE_ROOT$BRAIN2"Block1_L5_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block1_L6_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block1_L6_Segmented.npy" $SAVE_ROOT$BRAIN2"Block1_L6_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block1_L11_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block1_L11_Segmented.npy" $SAVE_ROOT$BRAIN2"Block1_L11_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block1_L15_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block1_L15_Segmented.npy" $SAVE_ROOT$BRAIN2"Block1_L15_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block1_L18_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block1_L18_Segmented.npy" $SAVE_ROOT$BRAIN2"Block1_L18_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block2_L5_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block2_L5_Segmented.npy" $SAVE_ROOT$BRAIN2"Block2_L5_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block2_L8_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block2_L8_Segmented.npy" $SAVE_ROOT$BRAIN2"Block2_L8_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block2_L11_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block2_L11_Segmented.npy" $SAVE_ROOT$BRAIN2"Block2_L11_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block2_L14_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block2_L14_Segmented.npy" $SAVE_ROOT$BRAIN2"Block2_L14_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block2_L17_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block2_L17_Segmented.npy" $SAVE_ROOT$BRAIN2"Block2_L17_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block3_L5_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block3_L5_Segmented.npy" $SAVE_ROOT$BRAIN2"Block3_L5_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block3_L8_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block3_L8_0_0_Segmented.npy" $SAVE_ROOT$BRAIN2"Block3_L8_0_0_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block3_L8_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block3_L8_0_1_Segmented.npy" $SAVE_ROOT$BRAIN2"Block3_L8_0_1_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block3_L8_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block3_L8_1_0_Segmented.npy" $SAVE_ROOT$BRAIN2"Block3_L8_1_0_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block3_L8_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block3_L8_1_1_Segmented.npy" $SAVE_ROOT$BRAIN2"Block3_L8_1_1_description.csv" >/dev/null 2>&1 &


#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block3_L11_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block3_L11_0_0_Segmented.npy" $SAVE_ROOT$BRAIN2"Block3_L11_0_0_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block3_L11_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block3_L11_0_1_Segmented.npy" $SAVE_ROOT$BRAIN2"Block3_L11_0_1_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block3_L11_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block3_L11_1_0_Segmented.npy" $SAVE_ROOT$BRAIN2"Block3_L11_1_0_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block3_L11_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block3_L11_1_1_Segmented.npy" $SAVE_ROOT$BRAIN2"Block3_L11_1_1_description.csv" >/dev/null 2>&1 &

# Brain 5

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L5_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L5_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L5_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L5_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L5_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L5_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L5_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L5_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L5_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L5_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L5_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L5_1_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L20_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L20_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L20_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L20_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L20_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L20_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L20_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L20_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L20_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L20_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L20_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L20_1_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L35_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L35_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_3L5_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L35_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L35_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L35_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L35_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L35_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L35_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L35_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L35_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L35_1_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L50_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L50_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L50_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L50_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L50_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L50_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L50_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L50_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L50_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L50_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L50_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L50_1_1_description.csv" >/dev/null 2>&1 &

# Block 2
python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L5_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L5_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L5_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L5_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L5_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L5_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L5_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L5_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L5_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L5_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L5_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L5_1_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L20_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L20_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L20_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L20_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L20_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L20_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L20_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L20_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L20_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L20_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L20_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L20_1_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L35_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L35_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_3L5_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L35_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L35_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L35_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L35_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L35_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L35_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L35_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L35_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L35_1_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L50_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L50_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L50_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L50_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L50_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L50_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L50_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L50_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L50_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L50_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L50_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L50_1_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L65_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L50_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L65_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L65_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L65_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L65_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L65_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L65_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L65_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block2_L65_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block2_L65_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block2_L65_1_1_description.csv" >/dev/null 2>&1 &

# Block 3
python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L3_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L3_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L3_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L3_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L3_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L3_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L3_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L3_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L3_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L3_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L3_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L3_1_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L17_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L17_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L17_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L17_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L17_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L17_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L17_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L17_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L17_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L17_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L17_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L17_1_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L32_0_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L32_0_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L32_0_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L32_0_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L32_0_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L32_0_1_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L32_1_0_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L32_1_0_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L32_1_0_description.csv" >/dev/null 2>&1 &

python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block3_L32_1_1_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block3_L32_1_1_Segmented.npy" $SAVE_ROOT$BRAIN5"Block3_L32_1_1_description.csv" >/dev/null 2>&1 &


#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block1_L5_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block1_L5_Segmented.npy" $SAVE_ROOT$BRAIN2"Block1_L5_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN2"Block2_L5_Prob_map.npy" $SAVE_ROOT$BRAIN2"Block2_L5_Segmented.npy" $SAVE_ROOT$BRAIN2"Block2_L5_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L5_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L5_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L5_description.csv" >/dev/null 2>&1 &

#python3 feature_extraction.py $SAVE_ROOT$BRAIN5"Block1_L50_Prob_map.npy" $SAVE_ROOT$BRAIN5"Block1_L50_Segmented.npy" $SAVE_ROOT$BRAIN5"Block1_L50_description.csv" >/dev/null 2>&1 &