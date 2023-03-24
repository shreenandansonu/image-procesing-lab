y=uigetfile('*.*');
j=imread(y);
i=rgb2gray(j);
rows=height(i);
column=width(i);
histvalue=zeros(1,255);
for Rows =1:rows
   for Columns=1:column
       x=i(Rows,Columns);
       histvalue(1,x+1)=histvalue(1,x+1)+1;
   end
end
figure();
k=0:1:254;
subplot(1,2,1);imshow(i);
subplot(1,2,2);plot(k,histvalue)
