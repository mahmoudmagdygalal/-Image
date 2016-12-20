clc;
clear all;
close all;
Ori_Image=imread('Koala.jpg');
kernel = [
        -1 -1 -1 
        -1  8 -1
        -1 -1 -1
      ]; 
sf = 50;
filter_Low = (1/(sf*sf))* ones(sf);
filter_High = (1/3) * kernel; 
figure;
subplot(2,2,1)
imshow(Ori_Image); 
title('Original 2D Image')
filtered_low = imfilter(Ori_Image,filter_Low,'replicate','same');
subplot(2,2,2);
imshow(filtered_low);
title('After Low Pass Filter on 2D Image')
%Smoothing Filter or Averaging Filter
filtered_high = imfilter(Ori_Image,filter_High,'replicate','same');
subplot(2,2,3);
imshow(filtered_high);
title('After High Pass Filter on 2D Image')
% Can be used to detect the edges becasue the edges is a high transistion from pixel to another.
%----------------------------------------------------------------------------------------------------------
figure;
subplot(2,2,1)
Image_Grayscal=rgb2gray(Ori_Image);
imshow(Image_Grayscal);
title('Original GrayScale Image')
subplot(2,2,2)
inv=255-Image_Grayscal;
imshow(inv);
title('Inverse with Subtraction');
subplot(2,2,3)
imshow(Image_Grayscal*3);
title('Increasing Matrix Image Intensity')
subplot(2,2,4)
imshow(Image_Grayscal/3);
title('Decreasing Matrix Image Intensity')

