function [output , readIn , readOut ]= Brightnessfunc(Input , image , name)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

x=imread(image);
y=imadd(x,Input);

imwrite(y,name);

output=name;
readIn=x;
readOut=y;

end

