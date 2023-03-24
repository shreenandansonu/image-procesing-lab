
% Example 2.9: Logical Operations

% Logical Operations
clear; close all; clc;
im1 = zeros(256,256);
%%
im1(64:191, 64:191) = 1;
%%
bim1 = im2bw(im1);
%%
im2 = zeros(256,256); 
im2(1:128,129:256) = 1;
bim2 = im2bw(im2);
%%
figure();
subplot(2,5,1); imshow(bim1);title('Binary Image1');
subplot(2,5,2); imshow(bim2);title('Binary Image2');
%%
% % Logical Operations

% Complement operations
c1 = imcomplement(bim1); % Complement of binary iamge-1
subplot(2,5,3); imshow(c1); title('Complement of Image-1');
%%
c2 = imcomplement(bim2); % Complement of binary iamge-2
subplot(2,5,4); imshow(c2); title('Complement of Image-2');
%%
% OR operation
imOR = bitor(bim1,bim2);
subplot(2,5,5); imshow(imOR); title('OR Operation');
%%
% NOR operation
imNOR = imcomplement(imOR);
subplot(2,5,6); imshow(imNOR); title('NOR Operation');
%%
% AND Operation
imAND = bitand(bim1,bim2);
subplot(2,5,7); imshow(imAND); title('AND Operation');
%%
% NAND Operation
imNAND = imcomplement(imAND);
subplot(2,5,8); imshow(imNAND); title('NAND Operation');
%%
% XOR operation
imXOR = bitxor(bim1,bim2);
subplot(2,5,9); imshow(imXOR); title('XOR Operation');
%%
imNOR = imcomplement(imXOR);
subplot(2,5,10); imshow(imNOR); title('XNOR Operation');

