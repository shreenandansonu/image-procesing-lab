fprintf('please Select an image');
y=uigetfile('*.*');
i=imread(y);
k=rgb2gray(i);
j=imnoise(k,'salt & pepper',0.1);
d = padarray(j,[1 1],0,'both');
[r,c]=size(d);
for R =2:(r-1)
   for C=2:(c-1)
       %if d(R,C)==255 || d(R,C)==0
       v=[d(R,C) d(R,C+1) d(R,C-1) d(R+1,C) d(R+1,C-1) d(R+1,C+1) d(R-1,C) d(R-1,C-1) d(R-1,C+1)];
       d(R,C)=median(v);
       %end
   end
end
e=d(2:end-1,2:end-1); %removing padding
subplot(1,3,1);imshow(i);title('Original Image');
subplot(1,3,2);imshow(j);title('salt and pepper noised');
subplot(1,3,3);imshow(e);title('noised removed');

%kam kar raha hai 