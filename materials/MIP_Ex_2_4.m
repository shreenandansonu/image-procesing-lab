
% Example 2.4: Subtraction of two images

clear; close all; clc;

I = double(imread('cameraman.tif'));
J = double(imread('rice.png'));
K = imsubtract(I,J);

figure();
subplot(1,3,1); imshow(I,[]);title('Original Image-1');
subplot(1,3,2); imshow(J,[]);title('Rice Image');
subplot(1,3,3); imshow(K,[]);title('Difference Image');



