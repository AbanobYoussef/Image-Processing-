I=imread("pout.tif");
figure,imshow(I);
figure,imhist(I);


J=histeq(I);




figure,imshow(J);
figure,imhist(J);