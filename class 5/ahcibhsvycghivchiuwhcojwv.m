fprintf("PLEASE SELECT AN IMAGE\n")
i=uigetfile('*.*');
j=imread(i)
k=rgb2gray(j);
imshow(k)
[r,c]=size(k)
l=fft2(k);
m=fftshift(l);
n=abs(m);
o=log(1+n);
imshow(o,[]);
Z=zeros(r,c);
d0=100;
n=2;
for R=1:r
    for C=1:r
        d=sqrt((R-(r/2))^2+(C-(c/2))^2);
        Z(R,C)=1/(1+(d0/d)^(2*n));
    end
end


imshow(Z)
new=m.*Z;
new1=fftshift(new);
new2=ifft2(new1);
imshow(abs(new2),[]);
edge=abs(new2);
sharp=double(k)+edge;
subplot(1,2,1); imshow(sharp,[]); title('Sharpened Image');

subplot(1,2,2); imshow(k,[]); title('Original Image');




