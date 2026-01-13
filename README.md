# 🖼️ Image Denoising & Enhancement using Digital Image Processing (MATLAB)

<p align="center">
  <img src="assets/banner.png" width="85%">
</p>

<p align="center">
  <b>A MATLAB-based Digital Image Processing project focused on noise modeling, denoising, enhancement, and quantitative evaluation using core ECE concepts.</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/MATLAB-R2021a+-orange">
  <img src="https://img.shields.io/badge/Digital%20Image%20Processing-ECE-blue">
  <img src="https://img.shields.io/badge/Status-Completed-success">
</p>

---

## 📌 Table of Contents
- [Project Overview](#-project-overview)
- [Key Objectives](#-key-objectives)
- [Noise Models Implemented](#-noise-models-implemented)
- [Denoising Techniques](#-denoising-techniques)
- [Image Enhancement & Feature Extraction](#-image-enhancement--feature-extraction)
- [Performance Evaluation](#-performance-evaluation)
- [Results & Visual Output](#-results--visual-output)
- [Applications](#-applications)
- [How to Run](#-how-to-run)
- [Project Structure](#-project-structure)
- [Tools & Technologies](#-tools--technologies)
- [Future Improvements](#-future-improvements)
- [Author](#-author)

---

## 🔍 Project Overview

This project demonstrates **real-world image degradation and restoration** using **classical Digital Image Processing (DIP) techniques** in MATLAB.  
It simulates common noise conditions, applies appropriate filters, enhances image quality, extracts edges, and evaluates performance using standard quantitative metrics.

The project is **ECE-focused**, emphasizing **signal processing fundamentals** rather than black-box deep learning approaches.

---

## 🎯 Key Objectives

- Simulate real-world **image noise models**
- Apply **noise-specific denoising filters**
- Improve **visual quality and contrast**
- Extract **structural features using edge detection**
- Quantitatively evaluate image restoration performance

---

## 🌫️ Noise Models Implemented

| Noise Type | Description | Real-World Occurrence |
|----------|------------|----------------------|
| Gaussian Noise | Statistical noise with normal distribution | Sensors, thermal noise |
| Salt & Pepper Noise | Random black & white pixels | Transmission errors |

<p align="center">
  <img src="assets/noise_comparison.png" width="80%">
</p>

---

## 🧹 Denoising Techniques

| Filter | Noise Type Targeted | Key Property |
|------|--------------------|-------------|
| Mean Filter | Gaussian | Spatial averaging |
| Median Filter | Salt & Pepper | Edge-preserving |
| Wiener Filter | Adaptive | Minimum MSE optimization |

<p align="center">
  <img src="assets/denoising_results.png" width="85%">
</p>

---

## ✨ Image Enhancement & Feature Extraction

### 🔹 Contrast Enhancement
- Histogram Equalization
- Enhances visibility in low-contrast images

### 🔹 Edge Detection
- Sobel Operator
- Extracts prominent structural boundaries

<p align="center">
  <img src="assets/enhancement_edges.png" width="85%">
</p>

---

## 📊 Performance Evaluation

### Metrics Used

| Metric | Purpose |
|------|--------|
| MSE (Mean Square Error) | Pixel-wise error measurement |
| PSNR (Peak Signal-to-Noise Ratio) | Image reconstruction quality |

### Sample Results

| Filter | MSE ↓ | PSNR ↑ |
|------|------|--------|
| Mean Filter | Moderate | Good |
| Median Filter | Low | Very Good |
| Wiener Filter | Lowest | Best |

<p align="center">
  <img src="assets/metrics_plot.png" width="70%">
</p>

---

## 🖼️ Results & Visual Output

| Stage | Output Description |
|-----|-------------------|
| Original Image | Clean reference |
| Noisy Image | Degraded input |
| Filtered Image | Noise suppression |
| Enhanced Image | Contrast improvement |
| Edge Image | Structural extraction |

<p align="center">
  <img src="assets/final_comparison.png" width="90%">
</p>

---

## 🏥 Applications

- Medical Image Processing  
- Surveillance and Security Systems  
- Remote Sensing  
- Image Transmission Systems  
- Industrial Inspection  
- Embedded Vision Applications  

---

## ▶️ How to Run

1. Clone or download the repository  
2. Place the input image as `image.jpg` in the project directory  
3. Open MATLAB  
4. Run the script:

```matlab
dip.m
```
5. Observe output images and performance metrics

---

## 🛠️ Tools and Technologies Used

1. MATLAB
2. Image Processing Toolbox
3. Digital Image Processing
4. Spatial Domain Filtering
