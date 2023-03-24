

% Example 2: Spectrum and reconstruction of an image with magnitude and
% phase spectrums

clear; close all; clc;
a=zeros(256,256); 
a(78:178,78:178)=1; 

figure(); 
subplot(2,2,1); imshow(a);title('Original Image'); axis on;
%%
af=fftshift(fft2(a)); 
subplot(2,2,2);imshow(abs(af));title('Spectrum of Image');
%%
% Now rotated the image by 45 degrees
[x,y] = meshgrid(1:256,1:256);
b=(x+y<329)&(x+y>182)&(x-y>-67)&(x-y<73); 
subplot(2,2,3);imshow(b);title('Rotated Image');axis on;
%%
bf = abs(fftshift(fft2(b)));
subplot(2,2,4);imshow(bf);title('Spectrum of Rotated Image');