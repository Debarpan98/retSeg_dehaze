# Evaluation of Retinal Vessel Segmentation with Dark Channel Prior dehazing
This project depicts a comparative study of segmentation performances of different state-of-art deep learning models for retinal vessel segmentation. The DRIVE dataset has been chosen for this project as it is the most widely used and popular benchamrk dataset for retinal vessel segmentation. A dehazing technique based on dark channel prior (DCP) has ben applied for preprocessing the images along with other traditional techniques. 

Please refer to [WriteUp file](WriteUp.pdf) for an elaborate description for the entire project and [Implementation guide](Implementation guide.pdf) for directions on how to replicate the results.


### Abstract
Retinal vessel analysis is very fundamental and crucial for diagnosing various kinds of disorders. While using modern cameras for retinal image acquisition, there often occurs some reflections from the retinal surface that causes luminosity and contrast variations. These irregularities in illumination might introduce distortions in the acquired image thereby distorting the anatomical structures. So, the illumination correction proposed by Savelli et. al which draws a connection between shadows and haze is used to reduce these illumination defects in this project. Since the performance of this method has only been tested on older retinal vessel segmentation algorithms, we attempt to utilize the results obtained from this method to train modern vessel segmentation networks and compare their performances.

### Pre-processing the Fundus Images (in order): 
- Dark Channel Prior Dehazing
- Intensity Normalization
- Contrast Limited Adaptive Histogram Equalization (CLAHE)
- Gamma Adjustment

### Segmentation models

1. U-Net
2. DU-Net
3. LadderNet

### Results

| Metric | Original (UNet) | Illumination Corrected (UNet) | Original (LadderNet)| Illumination Corrected (LadderNet) | Original (DU-Net)| Illumination Corrected (DU-Net) |
|--------|----------|-------------------------|----------|-------------------------|----------|-------------------------|
| GA     | 0.935    | 0.9398                  |  0.95     | 0.93                    | 0.949    | 0.948                   |
| Spec   | 0.9625   | 0.9693                  |  0.97     | 0.96                    |  0.971    | 0.974                   |
| Sen    | 0.7422   | 0.7319                  |  0.789    | 0.73                    |  0.797    | 0.765                   |
| Pre    | 0.7367   | 0.7708                  |  0.86     | 0.73                    |  0.794    | 0.806                   |
| ROC    | 0.9313   | 0.9403                  | 0.975    | 0.945                   |  0.973    | 0.967                   |



