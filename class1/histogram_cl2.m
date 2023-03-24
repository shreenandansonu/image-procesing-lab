j=imread('xray.jpg'); % here we are reading the image
i=rgb2gray(j); % here we are converting the RGB image to gray scale 
[rows,column]=size(i); % we are accessing the image size
histvalue=zeros(1,255);% creating a zero matrix to store the frequency
for Rows =1:rows % to traverse through each row of the image
   for Columns=1:column % to access each element of the row
       x=i(Rows,Columns); % assigning a variable the intensity value
       histvalue(1,x+1)=histvalue(1,x+1)+1; %updating the frequency  
   end
end
%ploting the original image and the histogram
k=0:1:254;
subplot(2,1,1); imshow(j);title('The image')
subplot(2,1,2); plot(k,histvalue);title('Histogram of image');grid on;
