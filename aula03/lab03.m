% M=5;
% s10=senoide(128,-127,10,1000);
% figure("Name","floor");
% plot(s10,'b');
% s10amostrado=senoide(128,-127,10,100);
% indice=10:10:1000; 
% hold on
% plot(indice,s10amostrado,'r');
% s10quantizado=quantiza(s10amostrado,M);
% stairs(indice,s10quantizado,'y');
% set(gca,'color',[0 0 0]);
% set(gca, 'XColor', 'g')
% grid minor
% hold off
% 
% 
% figure("Name","round");
% plot(s10,'b');
% % s10amostrado=senoide(128,-127,10,100);
% % indice=10:10:1000; 
% hold on
% plot(indice,s10amostrado,'r');
% rs10quantizado=quantizar(s10amostrado,M);
% stairs(indice,rs10quantizado,'g');
% set(gca,'color',[0 0 0]);
% set(gca, 'XColor', 'y')
% grid minor
% hold off

vp=15;vn=-15;f=10;
fa=[5;15;20;20.01;25;50];
for i=1: size(fa,1)
figure(i+12);
subplot(2,1,1);
s10original=senoide(vp,vn,f,100);
s10amostrado=senoide(vp,vn,f,fa(i));
j=100/fa(i);
indice=j:j:100;
plot(s10original,'b');
hold on
plot(indice,s10amostrado,'g');
set(gca,'color',[0 0 0]);
set(gca, 'XColor', 'g');
grid minor
hold off

subplot(2,1,2);
plot(abs(myDFT(s10amostrado)),'g');
set(gca,'color',[0 0 0]);
set(gca, 'XColor', 'g');
grid minor

end