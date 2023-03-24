fprintf('please Select an image');
y=uigetfile('*.*');
i=imread(y);
% Convert image to grayscale
if size(i, 3) == 3
    image = rgb2gray(i);
end

% Extract bit planes
bit_planes = zeros(size(image, 1), size(image, 2), 8);
for i = 1:8
    bit_planes(:,:,i) = bitget(image, i);
end

% Display bit planes
figure;
for i = 1:8
    subplot(2, 4, i);
    imshow(bit_planes(:,:,i), []);
    title(['Bit plane ', num2str(i)]);
end
