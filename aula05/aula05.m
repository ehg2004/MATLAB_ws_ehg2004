d=zeros(1,150);
d(1)=1;
u=recSinglePoleLP(d,0.18);
 figure(1)
 subplot(2,2,1);
 plot(u);
 title('LP IR')
 subplot(2,2,2);
 plot(abs(fft(u)));
 title('LP Gain')
 subplot(2,2,3);
 plot(angle(fft(u)));
 title('LP Phase');
 subplot(2,2,4);
 plot(20*log(abs(fft(u))));
 title('LP Atenuation');




figure(2)
v=recSinglePoleHP(d,0.45);
 subplot(2,2,1);
 plot(v);
 title('HP IR')
 subplot(2,2,2);
 plot(abs(fft(v)));
 title('HP Gain')
 subplot(2,2,3);
 plot(angle(fft(v)));
 title('HP Phase');
 subplot(2,2,4);
 plot(20*log(abs(fft(v))));
 title('HP Atenuation');

w=senoide(1,-1,20,1000)+senoide(1,-1,400,1000);

wLP=recSinglePoleLP(w,0.01);
figure(3);
subplot(3,1,1);
plot(w);
subplot(3,1,2);
plot(wLP);
subplot(3,1,3);
plot(abs(fft(wLP)));


wHP=recSinglePoleHP(w,0.2);
figure(4);
subplot(3,1,1);
plot(w);
subplot(3,1,2);
plot(wHP);
subplot(3,1,3);
plot(abs(fft(wHP)));

dSB=recTriPoleSB(d,0.01,0.25);
 figure(5)
 subplot(2,2,1);
 plot(dSB);
 title('SB IR')
 subplot(2,2,2);
 plot(abs(fft(dSB)));
 title('SB Gain')
 subplot(2,2,3);
 plot(angle(fft(dSB)));
 title('SB Phase');
 subplot(2,2,4);
 plot(20*log(abs(fft(dSB))));
 title('SB Atenuation');

dPB=recTriPolePB(d,0.01,0.25);

 figure(6)
 subplot(2,2,1);
 plot(dPB);
 title('PB IR')
 subplot(2,2,2);
 plot(abs(fft(dPB)));
 title('PB Gain')
 subplot(2,2,3);
 plot(angle(fft(dPB)));
 title('PB Phase');
 subplot(2,2,4);
 plot(20*log(abs(fft(dPB))));
 title('PB Atenuation');
 

 x=senoide(1,-1,50,1000)+senoide(1,-1,200,1000) + senoide(1,-1,350,1000);
 
 xSB=recTriPoleSB(x,0.01,0.2);
 xPB=recTriPolePB(x,0.01,0.2);

 figure(7)
 subplot(2,3,1);
 plot(x);
 title('Original signal')
 subplot(2,3,4);
 plot(abs(fft(x)));
 title('FFT')
 subplot(2,3,2);
 plot(xSB);
 title('SBF');
 subplot(2,3,5);
 plot(abs(fft(xSB)));
 title('SBF FFT');
 subplot(2,3,3);
 plot(xPB);
 title('PBF');
 subplot(2,3,6);
 plot(abs(fft(xPB)));
 title('PB FFT');

 dCheb=recChebyshevLP(d);
 figure(8)
 subplot(2,2,1);
 plot(dCheb);
 title('Chebyshev IR')
 subplot(2,2,2);
 plot(abs(fft(dCheb)));
 title('Chebyshev Gain')
 subplot(2,2,3);
 plot(angle(fft(dCheb)));
 title('Chebyshev Phase');
 subplot(2,2,4);
 plot(20*log(abs(fft(dCheb))));
 title('Chebyshev Atenuation');

