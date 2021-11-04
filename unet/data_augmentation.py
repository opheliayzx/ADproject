import numpy as np
import skimage.io as io
from skimage.transform import rotate, AffineTransform, warp
from skimage.util import random_noise
from skimage.filters import gaussian
from cv2 import LUT
import matplotlib.pyplot as plt
import torch 
import torchvision.transforms as transforms

def randomize_orientation(sample):
    if "label" in sample:
        new_sample = {"image": sample["image"], "label": sample["label"]}
        if np.random.randint(2):
            new_sample["image"] = torch.fliplr(sample["image"])
            new_sample["label"] = torch.fliplr(sample["label"])
        if np.random.randint(2):
            new_sample["image"] = torch.flipud(sample["image"])
            new_sample["label"] = torch.flipud(sample["label"])
        if np.random.randint(2):
            new_sample["image"] = torch.transpose(sample["image"], 1, 2)
            new_sample["label"] = torch.transpose(sample["label"], 0, 1)
    else:
        new_sample = {"image": sample["image"]}
        if np.random.randint(2):
            new_sample["image"] = torch.fliplr(sample["image"])
        if np.random.randint(2):
            new_sample["image"] = torch.flipud(sample["image"])
        if np.random.randint(2):
            new_sample["image"] = torch.transpose(sample["image"], 1, 2)

    return new_sample


def augment_sample(sample, random_orientation=False, gamma=False, avg_noise=False, total_noise=False, blur=False):
    new_sample = {"image": sample["image"].float()/255, "label": sample["label"]}
    if random_orientation: 
        new_sample = randomize_orientation(sample)
    if gamma:
        # sample a value uniformly from 0.9-1.0
        gamma_value = np.random.uniform(0.9, 1.0)
        new_sample["image"][:,:,:3] = transforms.functional.adjust_gamma(new_sample["image"][:,:,:3].permute(2,0,1)/255, gamma_value).permute(1,2,0)*255
    if avg_noise:
        new_sample["image"] += torch.normal(torch.zeros(3, 1, 1), std=0.1)
    if total_noise:
        new_sample['image'] = torch.normal(new_sample['image'], std=0.02)
    if blur:
        gaussian_blur = transforms.GaussianBlur(5, sigma=(0.01, 0.02))
        new_sample['image'] = gaussian_blur.forward(sample['image'])
    return new_sample 

