
% Example 5.2 : Histogram Equalization

clear;close all;clc;
im  = imread('pout.tif');

% im1  = imread('oed.jpg');
% im=rgb2gray(im1);

figure(); 
subplot(2,2,1); imshow(im); title('Original Image');

% Histogram
subplot(2,2,2); imhist(im);ylim('auto');
title('Histogram of Image'); %axis([0 255 0 2000]);

% Histogram equalization
im_heq = histeq(im, 256); 
subplot(2,2,3); imshow(im_heq);title('Histogram Equalization'); 

subplot(2,2,4); imhist(im_heq);ylim('auto');
title('Histogram of Equalization'); 

% Plot Transformation Curve 
hnorm = imhist(im)./numel(im); 
cdf = cumsum(hnorm);
figure(); plot((0:255)/255,cdf, 'b', 'LineWidth',2);
% 
% Plot Transformation Curve for Histogram Equalization
heq_norm = imhist(im_heq)./numel(im_heq); 
heq_cdf = cumsum(heq_norm);
figure(); plot((0:255)/255,heq_cdf, 'r', 'LineWidth',2);

%%

cdf1=cdf.*255;
rou=ceil(cdf1);
im1=im;
for i=1:256
    im1(find(im==(i-1)))=rou(i,1);
end
figure,imshow(im1);
