%%
clc
clear all
close all
%%
fprintf('please Select an image');
y1=uigetfile('*.*');

n=input('Please enter the value of gamma for Power law\n');
n=double(n);
J=imread(y1);
y2=rgb2gray(J);
y=double(y2);
%%
y3=y./255;
%%
y4=y3.^n;
%%
y5=y4.*255;
subplot(1,2,1);imshow(y2);title('Original Image');
subplot(1,2,2);imshow(y5,[]);title('gamma corrected image');
