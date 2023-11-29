%% uso: [Y]=ruido(media, desvio, fa)
%% desvio padr�o(sigma) � raiz quadrada da vari�ncia (v=sigma^2)
%% Plota ruido rand�mico com freq�ncia de amostragem 'fa' (Hz) utilizando a t�cnica:
%%	Y[n]=rand+rand+...(12 vezes)

function [Y]=ruido(media, desvio,fa)

	amostras=1:(fa); %cria vetor de amostragem

 	for i=1:(fa)
 		Y(i)=0;
 		aux=0;
 		for j=1:12
 			Y(i)=Y(i)+rand;
        end
 		Y(i)=Y(i)/12;
 		for j=1:6
 			aux=aux+rand;
        end
 		Y(i)=Y(i)-(aux/6);
 		Y(i)=(Y(i)*desvio)+media;
    end
        end

