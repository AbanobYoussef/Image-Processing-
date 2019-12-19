function output= Replicationfunc(Input , image , name)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

x=imread(image);
[nr, nc]=size(x);
y=zeros(Input*nr,Input*nc,"uint8");
a=1;
b=1;
for i=1:nr
    for j=1:nc
        for in=1:Input-1
        y(a,b)=x(i,j);
        y(a+1,b)=x(i,j);
        y(a,b+1)=x(i,j);
        y(a+1,b+1)=x(i,j);
        b=b+2;
        end 
    end
    b=1;
    a=a+Input;
end

imwrite(y,name);

output=name;

end

