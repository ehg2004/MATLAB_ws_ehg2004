
x=zeros(1,500);
for i=1:150
    x(i)=cos(2*pi/100*(i-1))+cos(2*pi/11*(i-1))+sin(2*pi/10*(i-1));
end
x1=zeros(1,150);
for i=1:150
    x1(i)=cos(2*pi/100*(i-1))+cos(2*pi/11*(i-1))+sin(2*pi/10*(i-1));
end

figure(2)
subplot(3,1,1);
plot(abs(myDFT(x)),'-o');
subplot(3,1,2);
plot(real(myDFT(x)),'-o');
subplot(3,1,3);
plot(imag(myDFT(x)),'-o');
figure(3)
subplot(3,1,1);
plot(abs(myDFT(x1)),'-o');
subplot(3,1,2);
plot(real(myDFT(x1)),'-o');
subplot(3,1,3);
plot(imag(myDFT(x1)),'-o');

xx=zeros(1,1000);
for i=1:1000
    xx(i)=cos(2*pi/100*(i-1))+cos(2*pi/11*(i-1))+sin(2*pi/10*(i-1));
end

figure(4);
subplot(3,1,1);
plot(abs(myDFT(xx)));
subplot(3,1,2);
plot(real(myDFT(xx)));
subplot(3,1,3);
plot(imag(myDFT(xx)));
figure(5);
plot(xx);
figure(10);
plot(abs(myDFT(xx)));


% figure(1)
% plot(x);
% hold on
% plot(x1,'-o')
% hold off
% '
% figure(4)
% subplot(2,1,1);
% plot(abs(myDFT(x)),'-o');
% subplot(2,1,2);
% plot(abs(myDFT(x1)),'-o');
% 
% % tic();
% % FX=myDFT(x);
% % toc();
% % tic();
% % Y=fft(x);
% % toc();
% % %plot(abs(FX));
% % % hold on
% % % plot(real(FX),'r');
% % % plot(imag(FX),'g');''

% % % 
% % % figure(2);
% % % 


% figure(2);
% z=fft(x);
% tol = 1e-6;
% z(abs(z) < tol) = 0;
% 
% theta = angle(z);
% theta(abs(theta) < tol) = 0;
% plot(theta/pi);
% 

load("fpf(1).mat","fpf");
fpf1=transpose(fpf);
figure(6);
plot(fpf1,'-o');
figure(7);
plot(abs(myDFT(fpf1)),'-o');
fpf2=zeros(1,500);
for i=1:199
fpf2(i)=fpf1(i);
end

figure(8);
plot(fpf2,'-o');
figure(9);
plot(abs(myDFT(fpf2)),'-o');