function [y]=correlacao(h,x)
    nx=length(x);
    nh=length(h);
    ny=nx+nh-1;
    for i=1:ny
        y(i)=0;
        for j=1:nx
            if((i+j-nx) >0 && (i+j-nx) <= nh)
                y(i)=y(i)+x(j)*h(i+j-nx);
            end
        end
    end
end

