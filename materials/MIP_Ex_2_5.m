
% Example 2.4: Multiply a constant value

% Image multiplication with a constant value
clear; close all; clc;
I = imread('cameraman.tif');
J = immultiply(I,0.3); % multiplication with a constant value 0.1
K = immultiply(I,2); % multiplication with a constant value 5
figure();
subplot(1,3,1), imshow(I);  title('Original Image');
subplot(1,3,2), imshow(J) ; title('Multiply by a constant value = 0.3');
subplot(1,3,3), imshow(K) ; title('Multiply by a constant value = 2');




