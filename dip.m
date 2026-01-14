clc
clear
close all

img = imread('image3.jpeg');

if size(img,3) == 3
    img = rgb2gray(img);
end

img = im2uint8(img);

noise_var = [0.001 0.005 0.01 0.02];

psnr_mean = zeros(1,length(noise_var));
psnr_median = zeros(1,length(noise_var));
psnr_wiener = zeros(1,length(noise_var));

mse_mean = zeros(1,length(noise_var));
mse_median = zeros(1,length(noise_var));
mse_wiener = zeros(1,length(noise_var));

h = fspecial('average',[3 3]);

for i = 1:length(noise_var)
    noisy_img = imnoise(img,'gaussian',0,noise_var(i));

    mean_img = imfilter(noisy_img,h,'replicate');
    median_img = medfilt2(noisy_img,[3 3]);
    wiener_img = wiener2(noisy_img,[5 5]);

    mse_mean(i) = immse(img,mean_img);
    psnr_mean(i) = psnr(mean_img,img);

    mse_median(i) = immse(img,median_img);
    psnr_median(i) = psnr(median_img,img);

    mse_wiener(i) = immse(img,wiener_img);
    psnr_wiener(i) = psnr(wiener_img,img);
end

noisy_img = imnoise(img,'gaussian',0,0.01);
mean_filtered = imfilter(noisy_img,h,'replicate');
median_filtered = medfilt2(noisy_img,[3 3]);
wiener_filtered = wiener2(noisy_img,[5 5]);
hist_eq = histeq(wiener_filtered);

figure

subplot(2,3,1)
imshow(img)
title('Original Image')

subplot(2,3,2)
imshow(mean_filtered)
title('Mean Filtered')

subplot(2,3,3)
imshow(median_filtered)
title('Median Filtered')

subplot(2,3,4)
imshow(wiener_filtered)
title('Wiener Filtered')

subplot(2,3,5)
imshow(hist_eq)
title('Histogram Equalized')

subplot(2,3,6)
imshowpair(img,hist_eq,'montage')
title('Original vs Enhanced')

figure
plot(noise_var,psnr_mean,'-o','LineWidth',2)
hold on
plot(noise_var,psnr_median,'-s','LineWidth',2)
plot(noise_var,psnr_wiener,'-^','LineWidth',2)
grid on
xlabel('Noise Variance')
ylabel('PSNR (dB)')
legend('Mean','Median','Wiener')
title('PSNR Comparison')

figure
plot(noise_var,mse_mean,'-o','LineWidth',2)
hold on
plot(noise_var,mse_median,'-s','LineWidth',2)
plot(noise_var,mse_wiener,'-^','LineWidth',2)
grid on
xlabel('Noise Variance')
ylabel('MSE')
legend('Mean','Median','Wiener')
title('MSE Comparison')

fprintf('NoiseVar   PSNR_Mean   PSNR_Median   PSNR_Wiener\n')
for i = 1:length(noise_var)
    fprintf('%.4f     %.2f dB     %.2f dB        %.2f dB\n', ...
        noise_var(i),psnr_mean(i),psnr_median(i),psnr_wiener(i))
end
