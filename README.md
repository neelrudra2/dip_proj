# Image Denoising and Enhancement using Digital Image Processing (MATLAB)

## Overview
This project implements fundamental Digital Image Processing (DIP) techniques to simulate real-world image degradation, perform noise removal, enhance image quality, and evaluate performance using standard metrics. The system is developed in MATLAB with a focus on core ECE signal and image processing concepts.

## Objectives
- Simulate common image noise models encountered in practical systems  
- Apply appropriate denoising filters for different noise types  
- Enhance image contrast and extract structural features  
- Evaluate performance using quantitative metrics  

## Methodology
1. Read the input image and convert it to grayscale  
2. Add Gaussian and Salt & Pepper noise  
3. Apply Mean, Median, and Wiener filters for noise removal  
4. Perform image enhancement using histogram equalization  
5. Extract edges using Sobel operator  
6. Evaluate filter performance using PSNR and MSE  

## Techniques Used
- Spatial domain filtering  
- Adaptive noise reduction  
- Contrast enhancement  
- Edge detection  
- Image quality assessment  

## Performance Metrics
- Mean Square Error (MSE)  
- Peak Signal-to-Noise Ratio (PSNR)  

## Applications
- Medical image processing  
- Surveillance and security systems  
- Remote sensing  
- Image transmission  
- Industrial inspection   

## How to Run
1. Place `image.jpg` in the same directory as `dip.m`  
2. Open MATLAB  
3. Run the script  
4. Observe output images and performance metrics  
