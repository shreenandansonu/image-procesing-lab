%y=uigetfile('*.*');

i=imread("cameraman.tif");
%i=rgb2gray(j);
rows=height(i);
column=width(i);
histvalue=zeros(1,256);
for Rows =1:rows
   for Columns=1:column
       x=i(Rows,Columns);
       histvalue(1,x+1)=histvalue(1,x+1)+1;
   end
end
%histogram ends here-----------------------------------
%probability -------------------------
px=zeros(1,256);
for columns=1:256
    px(1,columns)=histvalue(1,columns)/(rows*column);
end
cdf=zeros(1,256);
cumulative=0;
for columns=1:256
    cdf(1,columns)=px(1,columns)+cumulative;
    cumulative=cumulative+px(1,columns);
end
CDF=255*cdf;
newhist=round(CDF);
NEWHIST=zeros(1,256);
for elements=1:256
    newgraylevel=newhist(1,elements)+1;
    NEWHIST(1,newgraylevel)=NEWHIST(1,newgraylevel)+histvalue(1,elements);
end

enhancedimage=zeros(rows,column);
for Rows =1:rows
   for Columns=1:column
       x=i(Rows,Columns);
       values=newhist(1,x+1);
       enhancedimage(Rows,Columns)=values;
   end
end
new=histeq(i);
histn=imhist(new);

figure();
k=0:1:255;
subplot(2,2,1);bar(k,imhist(i));
subplot(2,2,2);bar(k,histvalue);
subplot(2,2,3);bar(histn);
subplot(2,2,4);bar(k,NEWHIST);