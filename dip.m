clc
clear
close all

img = imread('image.jpeg');

if size(img,3) == 3
    img = rgb2gray(img);
end

img = im2uint8(img);

figure
imshow(img)
title('Original Image')

img_gaussian = imnoise(img,'gaussian',0,0.01);
img_sp = imnoise(img,'salt & pepper',0.05);

h = fspecial('average',[3 3]);
mean_filtered = imfilter(img_gaussian,h);

median_filtered = medfilt2(img_sp,[3 3]);

wiener_filtered = wiener2(img_gaussian,[5 5]);

enhanced_img = histeq(median_filtered);

edge_img = edge(enhanced_img,'sobel');

mse_mean = immse(img,mean_filtered);
psnr_mean = psnr(mean_filtered,img);

mse_median = immse(img,median_filtered);
psnr_median = psnr(median_filtered,img);

mse_wiener = immse(img,wiener_filtered);
psnr_wiener = psnr(wiener_filtered,img);

fprintf('Mean Filter  MSE %.4f  PSNR %.2f dB\n',mse_mean,psnr_mean);
fprintf('Median Filter  MSE %.4f  PSNR %.2f dB\n',mse_median,psnr_median);
fprintf('Wiener Filter  MSE %.4f  PSNR %.2f dB\n',mse_wiener,psnr_wiener);

figure

subplot(3,3,1)
imshow(img)
title('Original')

subplot(3,3,2)
imshow(img_gaussian)
title('Gaussian Noise')

subplot(3,3,3)
imshow(mean_filtered)
title('Mean Filter')

subplot(3,3,4)
imshow(img_sp)
title('Salt & Pepper Noise')

subplot(3,3,5)
imshow(median_filtered)
title('Median Filter')

subplot(3,3,6)
imshow(wiener_filtered)
title('Wiener Filter')

subplot(3,3,7)
imshow(enhanced_img)
title('Histogram Equalized')

subplot(3,3,8)
imshow(edge_img)
title('Sobel Edge')

subplot(3,3,9)
imshowpair(img,enhanced_img,'montage')
title('Original vs Enhanced')
