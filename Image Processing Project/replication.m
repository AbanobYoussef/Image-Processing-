
x=imread("cameraman.tif");
[nr, nc]=size(x);
y=zeros(2*nr,2*nc,"uint8");
a=1;
b=1;
for i=1:nr
    for j=1:nc
        y(a,b)=x(i,j);
        y(a+1,b)=x(i,j);
        y(a,b+1)=x(i,j);
        y(a+1,b+1)=x(i,j);
        b=b+2;
    end
    b=1;
    a=a+2;
end

figure,imshow(x);
figure, imshow(y);
