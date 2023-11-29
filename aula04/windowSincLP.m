function [h] = windowSincLP(M,FC,w)
sum=0;
h=zeros(1,M);
    for i=1 : M
        if ((i-1-M/2) == 0)
           h(i)= 2*pi*FC;
        else
           h(i)=sin(2*pi*FC*(i-M/2-1))/(i-M/2-1) ;
        end
        if(w==1)
         h(i) = h(i)* (0.54 - 0.46*cos(2*pi*(i-1)/M) );
        end
        if(w==2)
         h(i) = h(i)* (0.42 - 0.5*cos(2*pi*(i-1)/M) + 0.08*cos(4*pi*(i-1)/M) );
        end
    sum=sum+h(i);
    end
    h=h/sum;
end

