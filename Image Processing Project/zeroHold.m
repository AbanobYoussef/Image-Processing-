
x=imread("cameraman.tif");

[nr, nc]=size(x);
y=zeros(2*nr-1,2*nc-1,"uint8");
a=1;
b=1;
%columns
for i=1:nr
    for j=1:nc-1
        y(a,b)=x(i,j);
        b=b+1;
        val1=uint16(x(i,j));
        val2=uint16(x(i,j+1));
        val3=uint16(val1+val2)/2;
        y(a,b)=val3;
        b=b+1;
        
    end
    y(a,b)=x(i,nc);
    b=1;
    a=a+2;
end
%Rows
for c=1:2*nc-1
    for r=2:2:2*nr-1
        val1=uint16(y(r-1,c));
        val2=uint16(y(r+1,c));
        val3=uint16(val1+val2)/2;
        y(r,c)=val3;
    end
    
end
title('Original Image');
figure,imshow(x);
title('Histogram equalization');
figure, imshow(y);