clc
% Example 3     % Explore the FFT of an image

clear;close all;clc;

im = imread('cameraman.tif');
[m n] = size(im);
%%
% Spectrum calculations 
imF = fft2(im);          % 2D FFT      
imF_mag = abs(imF);         % Magnitude Spectrum
s = log(1+abs(fftshift(imF)));% Log Magnitude Spectrum
imF_ph=angle(imF);     % Phase Spectrum

figure();
subplot(1,3,1); imshow(im); title('Original Image');
subplot(1,3,2); imshow(s,[]); title('Log Magnitude Spectrum');
subplot(1,3,3); imshow(imF_ph); title('Phase Spectrum Image');
%%
% Reconstruction

% Reconstruction by combining both magnitude and phase spectrum
imr = ifft2(imF_mag.*exp(1i*imF_ph))/(m*n); 
%%
% Reconstruction by only magnitude spectrum
imr_mag = abs(ifftshift(ifft2(imF_mag)));
% imr_mag = abs((ifft2(imF_mag)));

% Reconstruction by only phase spectrum
imr_ph = ifft2(exp(1i*imF_ph))/(m*n);


figure();
subplot(1,3,1); imshow(imr,[]);   title('Recon. Magn and Phase');
subplot(1,3,2); imshow(uint8(imr_mag),[]);  title('Recon.with Mag Spectrum only');
subplot(1,3,3); imshow(imr_ph,[]);title('Reconstruction with Phase Spectrum only');
