clc;
clear all;
close all;
A=imread('koala.jpg');
A=im2double(A);
figure;
%Histogram is an approach to enhance an image. 
%getting a low contrust by making the high out less than the low out
subplot(3,2,1)
imshow(A);
title('Origienal');
subplot(3,2,2)
Adj_a=imadjust(A,[],[.3 .5]);
imshow(Adj_a);
title('low-contrast-image from original picture.');
subplot(3,2,3)
rgb_A=rgb2gray(A);
imhist(rgb_A);
title('histogram Origienal');
subplot(3,2,4)
rgb_adj=rgb2gray(Adj_a);
imhist(rgb_adj);
title('histogram low-contrast-image from original picture');
subplot(3,2,5);
adj=imadjust(Adj_a,[.3 .5],[]);
imshow(adj);
title('Image After Adjust Enhancement')
%Adjustment is used to enhance an image.