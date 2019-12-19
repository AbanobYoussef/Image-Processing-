
x=imread("cameraman.tif");
title('Original Image');
figure,imshow(x);
figure,imhist(x);

y=imadd(x,50);

title('Histogram equalization');
figure,imshow(y);
figure,imhist(y);