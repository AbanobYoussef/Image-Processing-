function [output , readIn , readOut ]= Stertchingfunc(image,name)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
I=imread(image);


I=double(I);
I_min=min(I(:));
I_max=max(I(:));

J=255*(I-I_min)/(I_max-I_min);

I=uint8(I);
J=uint8(J);


imwrite(J,name);

output=name;
readIn=I;
readOut=J;
end

