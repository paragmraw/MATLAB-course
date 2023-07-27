clc;clear all;close all;

rgb = imread('coloredChips.png');
imshow(rgb)
figure
gray_image = rgb2gray(rgb);
imshow(gray_image);
figure
[centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark')
[centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark', 'Sensitivity',0.9)

imshow(rgb);
h = viscircles(centers,radii);
