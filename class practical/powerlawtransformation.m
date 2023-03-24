fprintf('please Select an image');
y=uigetfile('*.*');
n=input('Please enter the value of gamma for Power law\n');
n=double(n);
j=imread(y);
i=rgb2gray(j);
[r,c]=size(i);
newimg=zeros(r,c);
for Rows =1:r
   for Columns=1:c
       newimg(Rows,Columns)=(double(i(Rows,Columns))^n)*255;
   end
end
subplot(1,2,1);imshow(i);title('Original Image');
subplot(1,2,2);imshow(newimg);title('gamma corrected image');