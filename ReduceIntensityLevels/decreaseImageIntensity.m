function decreaseImageIntensity( imagePath, levelsNum)
%DECREASEIMAGEINTENSITY reducing the number of intensity levels in an image
% from 256 to specified number of levels, in integer powers of 2.
% to decrease intensity :
%   1- devide by scaling factor
%   2 - get the floor
%   3 - multiply by scaling factor

scalingFactor = 256 / levelsNum;
image = imread(imagePath);
newImage = floor(image./scalingFactor).* scalingFactor;
imshow(newImage);
imwrite(newImage, 'reduced.png')

end

