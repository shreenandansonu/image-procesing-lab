fprintf('please Select an image');
y=uigetfile('*.*');
i=imread(y);
j=rgb2gray(i);
[r,c]=size(j);
newimg=255-i;
subplot(1,2,1);imshow(i);title('Original Image');
subplot(1,2,2);imshow(newimg);title('image negative');