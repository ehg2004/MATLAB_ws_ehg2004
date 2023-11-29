function [y] = recSinglePoleLP(x,fc)
%RECSINGLEPOLELP Summary of this function goes here
%   Detailed explanation goes here
y=zeros(1,length(x));
r=exp(-2*pi*fc);
    y(1)=(1-r)*x(1);
for i=2:length(x) 
    y(i)=(1-r)*x(i)+(r)*y(i-1);
end

end
