a=[0.2, 0.6, 0.2]
b=[0.2, 0.4, 0.3, 0.5, 0.3, 0.4, 0.2]
c=convolucao(a,b)

m =1000 ;
for i = 1 : m
    x(i) = cos(2*pi*(i-1)/500) + cos (2*pi* (i-1)/10);
end
%plot(x);
%plot(abs(fft(x)));
%help load
fpa0 = load ("fpa0_05.txt", '-ascii');
fpb0 = load ("fpb0_05.txt", '-ascii');
filtrado_fpa0 = convolucao (fpa0,x);
filtrado_fpb0 = convolucao(fpb0,x);
plot(abs(fft(filtrado_fpb0)));