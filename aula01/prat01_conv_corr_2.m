x1 = senoide (2.6, -2.6, 0.25, 15);
x2 = ruido(0,10,1000);
x3 = x2;
for i=300: 314
    x3(i) = x3(i) + x1(i-299);
end
plot(x2,'B')
hold on 
% plot(x3, 'r')
% grid;
% hold off
% 
% c = correlacao(x3, x1);
% figure(2)
% plot(c)
% grid;
