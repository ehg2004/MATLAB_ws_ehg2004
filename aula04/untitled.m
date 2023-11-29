 u=windowSincLP(100,0.18,2);
 figure(1)
 subplot(2,1,1);
  plot(u);
 subplot(2,1,2);
 plot(abs(fft(u)));

figure(2)
v=windowSincLP(100,0.18,0);
subplot(2,1,1);
plot(v);
subplot(2,1,2);
plot(abs(fft(v)));

w=windowSincHP(100,0.18,2);

% figure(3)
% 
% subplot(2,1,1);
% plot(w);
% subplot(2,1,2);
% plot(abs(fft(w)));

l = windowSincBS(100,0.18,0.32,2);
% figure(4)
% 
% subplot(2,1,1);
% plot(l);
% subplot(2,1,2);
% plot(abs(fft(l)));

m = windowSincBP(100,0.18,0.32,2);
% figure(5)
% 
% subplot(2,1,1);
% plot(m);
% subplot(2,1,2);
% plot(abs(fft(m)));

x=zeros(1,1000);
for i=1:1000
    x(i) = sin(pi* 100* (i-1) / 1000) + sin(pi* 400*(i-1) / 1000) + sin(pi*800*(i-1) / 1000);
end

figure(7);
x0=conv(x,u);
subplot(2,1,1);
plot(x0);
subplot(2,1,2);
plot(abs(fft(x0)));

figure(8);
x1=conv(x,v);
subplot(2,1,1);
plot(x1);
subplot(2,1,2);
plot(abs(fft(x1)));


figure(9);
x2=conv(x,l);
subplot(2,1,1);
plot(x2);
subplot(2,1,2);
plot(abs(fft(x2)));

figure(10);
x3=conv(x,m);
subplot(2,1,1);
plot(x3);
subplot(2,1,2);
plot(abs(fft(x3)));

load('ImagemHibrida2s2023.mat');
IH=Imagem_hibrida;
figure(11);
imshow(IH,[]) ;% o [] normaliza o menor valor para 0 (preto) e o maior
% valor para 255(branco)

lp=windowSincLP(50,0.025,2);
hp=windowSincHP(50,0.05,2);
% hibrida_FiltradaPB=zeros(2,408+50-1,497);%%
for i=1:497 
M1=conv(IH(i,:),lp );
hibrida_FiltradaPB(i,:) = M1;

M2=conv(IH(i,:),hp );
hibrida_FiltradaHB(i,:) = M2;
end
figure(12);
imshow(hibrida_FiltradaPB,[]);
figure(13);
imshow(hibrida_FiltradaHB,[]);

