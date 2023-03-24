
% Example 5.3 : Histogram Modification

clear;close all;clc;

im  = imread('pout.tif');
    
figure(); 
subplot(3,2,1); imshow(im,[]); title('Original Image');

% Histogram
subplot(3,2,2); imhist(im);ylim('auto');
title('Histogram of Image'); 

% Histogram equalization
% im_heq = histeq(im, 256); 
im_heq = histeq(im); 
subplot(3,2,3); imshow(im_heq);title('Histogram Equalization'); 

% Histogram of equalized image
subplot(3,2,4); imhist(im_heq);ylim('auto');
title('Histogram of Equalized Image'); 

% Histogram modification
imsc = histeq(im, 0:200); 
subplot(3,2,5); imshow(imsc,[]);
title('Histogram Modified'); 

subplot(3,2,6); imhist(imsc); %ylim('auto');
title('Histogram of Modified Image'); 


% % imsc = imscale(im,[0 1]);     % Rescale the values to [0 1]
% imsc = imscale(double(im));
% img = norminv(imsc,0,100);   % Model the histogram to a normal % distribution with a   
                                          % mean value 0 and a   %deviation 10


