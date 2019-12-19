function output= KTimesfunc(Input , image , name)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
x=imread(image);
[nr nc]=size(x);
k=Input;
y=zeros(k*(nr-1)+1,k*(nc-1)+1,"uint8");
a=1;
b=1;
%columns
for i=1:nr
    for j=1:nc-1
        y(a,b)=x(i,j);
        op=(x(i,j)-x(i,j+1))/k;
        val=x(i,j);
        cntr=k;
        while cntr>0
            cntr=cntr-1;
            b=b+1;
            val=val+op;
            y(a,b)=val;
        end
    end
    b=1;
    a=a+k;
end
a=k*(nr-1)+1;
b=k*(nc-1)+1;

%Rows
for c=1:b
    for r=1:a-k
        if mod((r-1),k)==0
            val=y(r,c);
            op=(y(r,c)-y(r+k,c))/k;
        end
        y(r,c)=val;
        val=val+op;
        %disp("ahmed")
    end
end
imwrite(y,name);

output=name;
end

