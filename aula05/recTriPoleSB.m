function [y] = recTriPoleSB(x,BW,FC)
%RECTRIPOLESB Summary of this function goes here
%   Detailed explanation goes here
R=1-3*BW;
k=(1-2*R*cos(2*pi*FC)+R*R)/(2-2*cos(2*pi*FC));
a0=k;
a1=-2*k*cos(2*pi*FC);
a2=k;
b1=2*R*cos(2*pi*FC);
b2=-R*R;
y=zeros(1,length(x));
y(1)=a0*x(1);
y(2)=a0*x(2)+a1*x(2-1)+b1*y(2-1);
for i=3:length(x)
    y(i)=a0*x(i)+a1*x(i-1)+a2*x(i-2)+b1*y(i-1)+b2*y(i-2);
end
end

