Steps for Generating Training Data, CV Measures, and Applying Model to Brain for Exvivohuman_11T Dataset

###UPDATES ON VERSIONS#####
Please use that in ADprooject_DJT2 as it is linked to twardlab/ADproject github fork which will be used for data augmentation

### Training and Testing for 1 Brain ###

1) split images of brain into 4 quadrants using: /cis/home/kstouff4/Documents/datasets/exvivohuman_11T/ExtractionTools/split_images.ipynb

2) manual sample zone and tau tangle annotations saved as *_Biomarker.nii.gz and *_SampleZone.nii.gz in /cis/home/kstouff4/Documents/datasets/exvivohuman_11T/TrainingData/Tau

3) generate training data for one brain specifically: runPreProcess.sh

4) generate CV measures: runCrossValidate.sh

5) train full model using: runTrain.sh

6) apply full model to all of the data for a single brain 

### Training and Testing for Multiple Brains ###