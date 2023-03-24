fprintf('please Select an image');
z=uigetfile('*.*');
x=imread(z);
n=input('Please enter the value of gamma for Power law\n');
n=double(n);

% Apply gamma correction
img_gamma = imadjust(x, [], [], n);
img_gamma1 = imadjust(x, [], [], 0.234);
img_gamma2 = imadjust(x, [], [], 1.356);
% Display original and gamma-corrected images side by side
figure;
subplot(2, 2, 1);
imshow(x);
title('Original Image');
subplot(2, 2, 2);
imshow(img_gamma);
title('corrected custom input');
subplot(2, 2, 3);
imshow(img_gamma1);
title('corrected gamma=0.234');
subplot(2, 2, 4);
imshow(img_gamma2);
title('corrected gamma=1.356');

%kam kar raha hai 