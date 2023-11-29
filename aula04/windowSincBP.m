function [h] = windowSincBP(M,FC0 ,FC1 ,w)
%UNTITLED Summary of this function goes here
% %   Detailed explanation goes here
% sum=0;
% h=zeros(1,M);
%     for i=1 : M
%         if ((i-1-M/2) == 0)
%            h(i)= 2*pi*FC0;
%         else
%            h(i)=sin(2*pi*FC0*(i-M/2-1))/(i-M/2-1) ;
%         end
%         if(w==1)
%          h(i) = h(i)* (0.54 - 0.46*cos(2*pi*(i-1)/M) );
%         end
%         if(w==2)
%          h(i) = h(i)* (0.42 - 0.5*cos(2*pi*(i-1)/M) + 0.08*cos(4*pi*(i-1)/M) );
%         end
%     sum=sum+h(i);
%     end
%     h=-h/sum;
%     h(M/2+1)=  h(M/2+1)+1;
%u=windowSincBS(M,FC0,FC1,w);
u=windowSincLP(M,FC1,w);
v=windowSincHP(M,FC0,w);
h=conv(u,v);


end

