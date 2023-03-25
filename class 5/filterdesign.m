fprintf('Please select an image\n')
i1=uigetfile('*.*');
i1=imread(i1);
i1=rgb2gray(i1);
i2=fft2(i1);
i2=fftshift(i2);
i2=abs(i2);
i2=log(1+i2);
imshow(i2,[])
%%
i2=fftshift(i2);
[r,c]=size(i2);
R=10;x_c=1;y_c=1;
[y,x]=ndgrid((-r/2)+1:r/2,(-c/2)+1:c/2);
y= (x-x_c).^2+(y-y_c).^2 <= R^2;
% pre=y==1;
% y(y==0)=1;
% y(pre)=0;
y=double(y);
new=i2.*y;
NEW=fftshift(new);
NEW=ifft2(NEW);
subplot(1,3,1);imshow(real(i1));title('Original image');
subplot(1,3,2);imshow(real(NEW),[]);title('Filtered image');
neww=i2+(NEW-100);
subplot(1,3,3);imshow(real(neww),[]);title('sharpend image');

