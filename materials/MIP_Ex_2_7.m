
% Example 2.7: Division by a constant value

clear; close all; clc;

I = imread('cameraman.tif');
J = imdivide(I,0.5); % Division with a constant value 0.5
K = imdivide(I,2); % Division with a constant value 5

figure();
subplot(1,3,1), imshow(I);  title('Original Image');
subplot(1,3,2), imshow(J) ; title('Division by a constant value = 0.5');
subplot(1,3,3), imshow(K) ; title('Division by a constant value = 2');




