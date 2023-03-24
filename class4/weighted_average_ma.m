% Read the input image
inputImage = imread('s.jpg');

% Define the weights for the filter
weights = [1 5 1; 9 4 4; 7 2 9]/42;

% Apply the filter using imfilter
outputImage = imfilter(inputImage, weights);

% Display the input and output images side by side
subplot(1,2,1);imshow(inputImage);title('Original Image');
subplot(1,2,2);imshow(outputImage);title('smoothened image');
