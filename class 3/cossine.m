a1=zeros(100);
a2=zeros(100);
for rows=1:100
    for columns=1:100
        a1(rows,columns)=cos(columns);
        a2(rows,columns)=sin(columns);
    end
end
a3=fft2(a1);
a4=fftshift(a3);

subplot(1,2,1);imshow(a1);
subplot(1,2,2);imshow(a4);


    