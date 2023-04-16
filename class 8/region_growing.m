function [segmented_image] = region_growing(image, seed_point, threshold)
% Inputs:
%   - image: The input grayscale image
%   - seed_point: A 2-element vector containing the (x,y) coordinates of the seed point
%   - threshold: The threshold value for region growing
% Output:
%   - segmented_image: The output binary segmented image

% Initialize the segmented image to all zeros
segmented_image = zeros(size(image));

% Get the size of the image
[rows,cols] = size(image);

% Initialize the queue with the seed point
queue = [seed_point(1), seed_point(2)];

% Loop through the queue until it is empty
while ~isempty(queue)
    % Pop the first element from the queue
    current_point = queue(1,:);
    queue(1,:) = [];
    
    % Check if the current point is already segmented
    if segmented_image(current_point(2), current_point(1)) == 1
        continue;
    end
    
    % Check if the current point is within the image boundaries
    if current_point(1) < 1 || current_point(1) > cols || ...
            current_point(2) < 1 || current_point(2) > rows
        continue;
    end
    
    % Check if the intensity of the current point is below the threshold
    if image(current_point(2), current_point(1)) < threshold
        continue;
    end
    
    % Mark the current point as segmented
    segmented_image(current_point(2), current_point(1)) = 1;
    
    % Add the neighbors of the current point to the queue
    queue(end+1,:) = [current_point(1)-1, current_point(2)-1];
    queue(end+1,:) = [current_point(1), current_point(2)-1];
    queue(end+1,:) = [current_point(1)+1, current_point(2)-1];
    queue(end+1,:) = [current_point(1)-1, current_point(2)];
    queue(end+1,:) = [current_point(1)+1, current_point(2)];
    queue(end+1,:) = [current_point(1)-1, current_point(2)+1];
    queue(end+1,:) = [current_point(1), current_point(2)+1];
    queue(end+1,:) = [current_point(1)+1, current_point(2)+1];
end
