clc;
clear all;
close all;
O_Image=imread('Koala.jpg');
O_Image=im2double(O_Image);
figure;
subplot(1,2,1);
imshow(O_Image);
title('Original Image');
% creating noise using a filter 
h = fspecial('sobel');
h = h'; % inverse -- Horizontal 
subplot(1,2,2)
edge = imfilter(O_Image,h);
imshow(edge);
title('Edge Detection Image using Sobel')
% len -- linear motion of camera, default = 9 
% theta -- degree of direction, default = 0
% default which corresponds to a horizontal motion of nine pixels
filter = fspecial('motion',50,180);
figure;
subplot(1,2,1);
imshow(O_Image);
title('Original Image');
im_f = imfilter(O_Image,filter);
subplot(1,2,2);
imshow(im_f);
title('Motion Filter Image');