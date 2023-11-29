function [xQuant] = quantiza(x , M)
%QUANTIZA Summary of this function goes here
%   Detailed explanation goes here
l=size(x,2);
xQuant=zeros(1,l);
for i =1: l
    xQuant(i)=floor(x(i)/power(2,8-M))*power(2,8-M);
end

