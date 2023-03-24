
% Example 2.1: Image addition by a constant value
% Image addition by a constant value

clear; close all; clc;

I = imread('cameraman.tif');
%%
J = imadd(I,40); % Adding a constant value 40
%%
K = imadd(I,90); % Adding a constant value 90
L = imadd(I,150); % Adding a constant value 150
%%
figure();
subplot(2,2,1), imshow(I) ; title('Original Image')
subplot(2,2,2), imshow(J) ; title('Constant value =40')
subplot(2,2,3), imshow(K) ; title('Constant value =90')
subplot(2,2,4), imshow(L) ; title('Constant value =150')

