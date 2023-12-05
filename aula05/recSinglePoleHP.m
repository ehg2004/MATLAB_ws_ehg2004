function [y] = recSinglePoleHP(x,fc)
%RECSINGLEPOLEHP Summary of this function goes here
%   Detailed explanation goes here
y=zeros(1,length(x));
r=exp(-2*pi*fc);
    y(1)=(1+r)/2*x(1);
for i=2:length(x) 
    y(i)=(1+r)/2*x(i)-(1+r)/2*x(i-1)+(r)*y(i-1);
end
end

