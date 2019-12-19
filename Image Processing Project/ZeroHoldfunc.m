function output = ZeroHoldfunc(Input , image , name)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here



x=imread(image);

[nr, nc]=size(x);
k=Input;

y=zeros(k*nr-1,k*nc-1,"uint8");
a=1;
b=1;


for i=1:nr
    for j=1:nc-1
        y(a,b)=x(i,j);
        b=b+(k/2);
        val1=uint16(x(i,j));
        val2=uint16(x(i,j+1));
        val3=uint16(val1+val2)/2;
        y(a,b)=val3;
        b=b+(k/2);
        
    end
    y(a,b)=x(i,nc);
    b=1;
    a=a+k;
end


for c=1:k*nc-1
    for r=2:2:k*nr-1
        val1=uint16(y(r-1,c));
        val2=uint16(y(r+1,c));
        val3=uint16(val1+val2)/2;
        y(r,c)=val3;
    end
    
end

imwrite(y,name);

output=name;


end

