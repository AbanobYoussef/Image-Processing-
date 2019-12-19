function  SHOW(readIn , readOut , ax1 , ax2)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

                    [N ,~]=histcounts(readIn);
                    plot(ax1,N);
                    
                    [N ,~]=histcounts(readOut);
                    plot(ax2,N);
                    
                    subplot(1,2,1);
                    imhist(readIn);
                    subplot(1,2,2);
                    imhist(readOut);
end

