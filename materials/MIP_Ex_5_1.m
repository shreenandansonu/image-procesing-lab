
% Example 5.1 : Generating and Plotting Image Histograms

clear;close all;clc;

im  = imread('pout.tif');
% im1  = imread('ue.jpg');
% im=rgb2gray(im1);

% Histogram
figure(); 
subplot(2,2,1);imhist(im);
title('Histogram of Image'); axis([0 255 0 2000]);

% Representation in bar chart
imh = imhist(im);    

h1 = imh(1:10:256); 
horz = 1:10:256; 
subplot(2,2,2); bar(horz, h1);    
title('Histogram bar');axis([0 255 0 2000]);

% Representation using stem
subplot(2,2,3);stem(horz, h1,'m','fill','LineWidth',2);
title('Histogram in stem');axis([0 255 0 2000]);

% Representation using plot 
subplot(2,2,4); plot(imh, 'r','LineWidth',2);  
title('Histogram plot');axis([0 255 0 2000]);
