%grava tempo segundos de sinal amostrado a Fs Hz
Fs = 40000;%frequência de amostragem
tempo=5;%tempo de gravação em segundos
nBits = 16;
nChannels = 1;
ID = -1; % default audio input device
recObj = audiorecorder(Fs,nBits,nChannels,ID);
%Collect a five second sample of your speech with your microphone.
disp('Start speaking.') % Start speaking.
recordblocking(recObj,tempo);
disp('End of Recording.'); % End of Recording.
% play(recObj); %ok % Play back the recording. %play ou sound
% sound(recObj,Fs) % reproduz o som gravado
sinal_gravado = getaudiodata(recObj); % transforma o objeto em vetor.
sound(sinal_gravado,Fs); % reproduz vetor com o som gravado
figure(1)
plot(sinal_gravado); title('Sinal Original no tempo')% gráfico do sinal no
%tempo
figure(2);
plot(abs(fft(sinal_gravado)));title('frequência do sinal original') %gráfico
%na frequência
% save 'sinalgravado.mat' sinal_gravado % salva o vetor sinal_gravado no
% arquivo'sinalgravado.mat