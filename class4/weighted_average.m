fprintf('please Select an image');
y=uigetfile('*.*');
i=imread(y);
k=rgb2gray(i);
%j=imnoise(k,'salt & pepper',0.1)
d = padarray(i,[1 1],0,'both');

weights = [1 2 1; 2 4 2; 1 2 1]/16;
[r,c]=size(d);
for R =2:(r-1)
   for C=2:(c-1)
       %if d(R,C)==255 || d(R,C)==0
       v=double([d(R-1,C-1),d(R-1,C),d(R-1,C+1); d(R,C-1),d(R,C),d(R,C+1);  d(R+1,C-1),d(R+1,C),d(R+1,C+1) ]);
       
       d(R,C)=double(v.*weights);
       %end
   end
end
e=d(2:end-1,2:end-1); %removing padding
subplot(1,2,1);imshow(i);title('Original Image');
subplot(1,2,2);imshow(e);title('smoothened image');

%kam kar raha hai 