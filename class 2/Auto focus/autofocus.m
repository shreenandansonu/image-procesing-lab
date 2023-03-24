function [temp]=autofocus(b)
[m n]=size(b);
temp=double(0);

for i=1:m-1
    for j=1:n
        k(i,j)=b(i+1,j)-b(i,j); %substracting the adjacent row pixels%
        temp=temp+double(k(i,j));% adding all the differenced pixels%
    end
end
end