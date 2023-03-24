%% 
clear all
clc
%% reading the images%%%%%
fprintf('\n upload an image1 \n');
x=uigetfile('*.*');                         %to get access to the image 

X=imread(x);                                %read the image
fprintf('\n upload 2nd image\n');
y=uigetfile('*.*');                         % to get access to the image

Y=imread(y);                                % read the image
s1=size(X);                                 % to find the size of the image
if length(s1)==3                            % to find it is color image or gray scale image
X=rgb2gray(X);                              %if color image convert it into gray scale 
end
s2=size(Y);                                % to find the size of the image
if length(s2)==3                            % to find it is color image or gray scale image
Y=rgb2gray(Y);                             %if color image convert it into gray scale
end

%% auto focusing %%%%%%%%%%%%
k1=autofocus(X);                           %call for auto focus function
k2=autofocus(Y);
temp=0;
while(k2>k1)
    fprintf('\n present image is better focused than previous image \n ');
    R=input('still u want to check then type 1 if not 0\n'); % giving input 1 or 0
    if(R==1)
        fprintf('\n upload another image\n');
        x1=uigetfile('*.*');
        X1=imread(x1);                                      %if input is 1 read another image
        s3=size(X1);                       %to find size of the image
        if length(s3)==3                                     
        X1=rgb2gray(X1);                    % changing color image to gray    
        end
        k2=autofocus(X1);                   % call for auto focus function

     else
         fprintf('\n present image  is best focused\n');
         temp=1;
       break;
   end
end
 if(temp==0)
    fprintf('\n previous image is better focused than  present image\n go to the back step\n');

 end
