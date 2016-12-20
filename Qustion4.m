clc;
clear all;
close all;
Or_Image=imread('koala.jpg');
Image_Graysc=rgb2gray(Or_Image);
Image_Graysc=im2double(Image_Graysc);
c = .2;%the higher Darker will the image
figure;
subplot(1,3,1);
imshow(Image_Graysc);
title('Original Grayscale Image')

subplot(1,3,2);
Image_Graysc_log = c * log(1 + Image_Graysc);
imshow(Image_Graysc_log)
title('Log Transformation with C = .2')
c = 2.5;%the higher brigtness will the image 
subplot(1,3,3)
Image_Graysc_log_log_1 = c * log(1 + Image_Graysc);
imshow(Image_Graysc_log_log_1);
title('Log Transofrmatoin with C = 2.5')
imwrite(Image_Graysc,'mahmoud magdy.jpg');