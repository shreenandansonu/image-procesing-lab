
% Example 2.3: 
% Imagesubtraction by a constant value

clear; close all; clc;
I = imread('cameraman.tif');
J = imsubtract(I,40); % Adding a constant value 40
K = imsubtract(I,90); % Adding a constant value 90
L = imsubtract(I,150); % Adding a constant value 150

figure();
subplot(2,2,1), imshow(I) ; title('Original Image')
subplot(2,2,2), imshow(J) ; title('Constant value =40')
subplot(2,2,3), imshow(K) ; title('Constant value =90')
subplot(2,2,4), imshow(L) ; title('Constant value =150')



