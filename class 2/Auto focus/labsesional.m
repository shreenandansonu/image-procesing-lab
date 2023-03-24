%%
clear all
clc
%% Reading the images of  different focal lengths %%%%%%%%%%%
a1=imread('sn1.bmp');
a2=imread('sn2.bmp');
a3=imread('sn3.bmp');
a4=imread('sn4.bmp');
a5=imread('sn5.bmp');
a6=imread('sn6.bmp');
a7=imread('sn7.bmp');
%% Converting the colour images to gray %%%%%%%%%%%
b1=rgb2gray(a1);
b2=rgb2gray(a2);
b3=rgb2gray(a3);
b4=rgb2gray(a4);
b5=rgb2gray(a5);
b6=rgb2gray(a6);
b7=rgb2gray(a7);
%% Autofocusing the different images %%%%%%%%%%%%%%
s1=autofocus(b1);
s2=autofocus(b2);
s3=autofocus(b3);
s4=autofocus(b4);
s5=autofocus(b5);
s6=autofocus(b6);
s7=autofocus(b7);
%% Prediction %%%%%%%%

X=[s1 s2 s3 s4 s5 s6 s7];
Y=sort(X);
if(Y(7)==s1)
    fprintf('\n The image 1 is having good focul length \n');
    figure,imshow(a1);
elseif(Y(7)==s2)
    fprintf('\nThe image 2 is having good focul length \n');
    figure,imshow(a2);
elseif(Y(7)==s3)
    fprintf('\n The image 3 is having good focul length \n');
    figure,imshow(a3);
elseif(Y(7)==s4)
    fprintf('\n The image 4 is having good focul length \n');
    figure,imshow(a4);
elseif(Y(7)==s5)
    fprintf('\n The image 5 is having good focul length \n');
    figure,imshow(a5);
elseif(Y(7)==s6)
    fprintf('\n The image 6 is having good focul length \n');
    figure,imshow(a6);
 elseif(Y(7)==s7)
    fprintf('\n The image 7 is having good focul length \n');
    figure,imshow(a7);
end
%% 





