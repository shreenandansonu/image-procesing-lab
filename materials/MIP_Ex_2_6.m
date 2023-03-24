
% Example 2.6: Multipliction of two images

clear; close all; clc;
I = double(imread('cameraman.tif'));

% J = 255*phantom(256);
J = double(imread('rice.png'));
K = immultiply(I,J);

figure();
subplot(1,3,1); imshow(I,[]);title('Original Image');
subplot(1,3,2); imshow(J,[]);title('Rice Image');
subplot(1,3,3); imshow(K,[]);title('Multiplication of two images');



