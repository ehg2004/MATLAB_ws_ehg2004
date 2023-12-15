

load('SinalRuidoModulado2s23.mat')
sinal=sinalModulado;
Fs = 40000;%frequência de amostragem
tempo=5;%tempo de gravação em segundos
%sound(sinalDe,Fs); %reproduz o áudio com ruído modulado
figure(1);
plot(sinal); title('Sinal ruído modulado');
figure(2)
plot(abs(fft(sinal))); title('FFT do Sinal ruído modulado');

sinalDe=deModula(sinal,20000,40000);

hpF=windowSincHP(50,0.5-0.0495,1);
sinalHP=conv(hpF,sinal);
sinalDeHP=deModula(sinalHP,20000,40000);




lpF = windowSincLP(800,0.05,2);
%lpF = conv(conv(lpF,lpF),lpF);
fBS=0.0175;
BW=0.005;
f0=(3300/200000);
f1=(3403/200000);
f_0=0.0163;
f_1=0.01615;
%sinalBS=recTriPoleSB(recTriPoleSB(recTriPoleSB(sinal,BW,1-fBS),BW,1-fBS),BW,1-fBS);
% sinalBS = conv(windowSincBS(100, 0.5 -0.02, 0.5 - 0.015 ,2),sinal);
sinalBS = conv(windowSincBS(500, 0.00020 , 0.00030 ,2),sinal);


sinalBSHP=chebHP(chebHP(sinalBS));
%sinalBSHPDe=deModula(sinalBSHP,20000,40000);
sinalBSHPDe=deModula(sinal,20000,40000);


sinalDMLP=conv(lpF,sinalDe);
sinalDMLPBS=conv(windowSincBS(700, 0.015 , 0.02 ,2),sinalDMLP);
sinalDMLPBS=conv(windowSincBS(700, 0.015 , 0.02 ,2),sinalDMLPBS);
%sinalDMLPBS=conv(windowSincBS(100000, 0.01 , 0.02 ,2),sinalDMLPBS);



chebSinal=chebHP(sinal);
sinalDeHP=deModula(chebSinal,20000,40000);

sinalDeHPBS=recTriPoleSB(recTriPoleSB(recTriPoleSB(sinalDeHP,BW,fBS),BW,fBS),BW,fBS);

figure(3);
plot(sinalDMLPBS); title('Sinal ruído demodulado');
figure(4)
plot(abs(fft(sinalDMLPBS))); title('FFT do Sinal ruído demodulado');



figure(5);
plot(sinalDeHPBS); title('Sinal ruído demodulado');
figure(6)
plot(abs(fft(sinalDeHPBS))); title('FFT do Sinal ruído demodulado');
sound(sinalDe,Fs); %reproduz o áudio com ruído modulado

figure(7);
plot(sinalBS); title('Sinal ruído demodulado');
figure(8)
plot(abs(fft(sinalBS))); title('FFT do Sinal ruído demodulado');
