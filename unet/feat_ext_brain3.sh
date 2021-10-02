
feature_ext=/cis/home/slee508/ADproject-master/FeatureExtraction/feature_extraction.py


inpath="/cis/home/slee508/my_documents/Brain3/prob_map_data/block2/"
outpath="/cis/home/slee508/my_documents/Brain3/asset/block2/"

echo "------------------------------------------------"
echo "New Input Path: " "$inpath"
echo -e "New Output Path: " "$outpath\n"

for file in "$inpath"*.npy

do

files="${file##*/}"
file_name="${files%.*}"
output_name1="Segmented_$file_name"
output_name2="description_$file_name"

echo -e "Input File is: $files\n"
echo "Performing Feature Extraction"

nohup python "$feature_ext" "$file" "$outpath$output_name1.npy" "$outpath$output_name2.csv" >/dev/null 2>&1 &

echo "Nohup script submitted"
echo -e "Output 1 will be saved as : $output_name1.npy"
echo -e "Output 2 will be saved as : $output_name2.csv"

done


inpath="/cis/home/slee508/my_documents/Brain3/prob_map_data/block3/"
outpath="/cis/home/slee508/my_documents/Brain3/asset/block3/"

echo "------------------------------------------------"
echo "New Input Path: " "$inpath"
echo -e "New Output Path: " "$outpath\n"

for file in "$inpath"*.npy

do

files="${file##*/}"
file_name="${files%.*}"
output_name1="Segmented_$file_name"
output_name2="description_$file_name"

echo -e "Input File is: $files\n"
echo "Performing Feature Extraction"

nohup python "$feature_ext" "$file" "$outpath$output_name1.npy" "$outpath$output_name2.csv" >/dev/null 2>&1 &

echo "Nohup script submitted"
echo -e "Output 1 will be saved as : $output_name1.npy"
echo -e "Output 2 will be saved as : $output_name2.csv"

done


inpath="/cis/home/slee508/my_documents/Brain3/prob_map_data/block4/"
outpath="/cis/home/slee508/my_documents/Brain3/asset/block4/"

echo "------------------------------------------------"
echo "New Input Path: " "$inpath"
echo -e "New Output Path: " "$outpath\n"

for file in "$inpath"*.npy

do

files="${file##*/}"
file_name="${files%.*}"
output_name1="Segmented_$file_name"
output_name2="description_$file_name"

echo -e "Input File is: $files\n"
echo "Performing Feature Extraction"

nohup python "$feature_ext" "$file" "$outpath$output_name1.npy" "$outpath$output_name2.csv" >/dev/null 2>&1 &

echo "Nohup script submitted"
echo -e "Output 1 will be saved as : $output_name1.npy"
echo -e "Output 2 will be saved as : $output_name2.csv"

done



echo -e "\nAll feature extraction scripts submitted"

