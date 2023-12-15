function [y] = deModula(x,fm ,fs)
%DEMODULA Summary of this function goes here
%   Detailed explanation goes here
y=zeros(1,length(x));
    for i=1: length(x)
        M=cos((i+1)*2*pi*fm/fs);
        if M ~= 0 
            y(i) = x(i)/M;
        else
            y(i) = 0;
        end
    end
end

