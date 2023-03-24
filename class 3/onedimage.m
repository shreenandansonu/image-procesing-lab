a1=zeros(100);
for columns=1:100
    a1(1,columns)=cos(columns);
end
a2=fft(a1);
a3=fftshift(a2);
subplot(1,3,1);imshow(a1);
subplot(1,3,2);imshow(a2);
subplot(1,3,3);imshow(a3);