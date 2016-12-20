clc;
clear all;
close all;
Or_Image=imread('koala.jpg');
grayscal_Image=rgb2gray(Or_Image);
grayscal_Image=im2double(grayscal_Image);
size(grayscal_Image)
Red=Or_Image(:,:,1);
Green=Or_Image(:,:,1);
Z = zeros(size(grayscal_Image));
figure;
subplot(1,2,1);
imshow(cat(3,Red,Z,Z));
title('Red Layer')
subplot(1,2,2);
imshow(cat(3,Z,Green,Z));
title('Green Layer')
%-----------------------------------------------------------------
figure;
filter = fspecial('unsharp');
subplot(1,2,1);
imshow(Or_Image);
title('Original Image');
im_f = imfilter(Or_Image,filter);%The Unsharp filter  sharpens edges of the elements without increasing noise or blemish.
subplot(1,2,2);
imshow(im_f);
title('Unsharp Filter Image');
%------------------------------------------------------------------
figure;
subplot(2,2,1);
imshow(Or_Image);
title('Original Image Gamma = 1 is Default')
subplot(2,2,2);
x_adj_a = imadjust(Or_Image,[],[],1.5); 
imshow(x_adj_a);
title('Gamma Correction = 1.5 -- Little Darker')
subplot(2,2,3);
x_adj_a = imadjust(Or_Image,[],[],0.4); 
imshow(x_adj_a);
title('Gamma Correction = 0.4 -- Little Brighter')