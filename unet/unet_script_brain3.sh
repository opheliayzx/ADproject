## Script taken from Karl Lee and Modified by Katie Stouffer (09/10/21)


apply=/cis/home/kstouff4/ADproject/unet/apply.py
unet=/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/UNETTrainedModels/unet_tau_Brain2.pth



inpath="/cis/home/kstouff4/Documents/datasets/exvivohuman_11T/more_blocks/Brain2/histology/down_000/AD_Hip4/Tau/"
outpath="/cis/home/slee508/my_documents/Brain3/prob_map_data/block4/"

echo "------------------------------------------------"
echo "New Input Path: " "$inpath"
echo -e "New Output Path: " "$outpath\n"

for file in "$inpath"*crop.tif

do

files="${file##*/}"
file_name="${files%.*}"
output_name="pmap_$file_name"

echo -e "Input File is: $files\n"
echo "Applying UNET"
python3 "$apply" "$file" "$unet" "$outpath$output_name.npy"

echo -e "Output Probability Map Saved as: $output_name.npy\n"

done
