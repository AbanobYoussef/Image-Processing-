I=imread("pout.tif");

figure,imshow(I);
title('Original Image');

figure,imhist(I);


I=double(I);
I_min=min(I(:));
I_max=max(I(:));

J=255*(I-I_min)/(I_max-I_min);

J=uint8(J);


figure,imshow(J);
title('Histogram equalization');

figure,imhist(J);