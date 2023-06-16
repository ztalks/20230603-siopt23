%x=[0:0.02:6];
%y=0.6*sin(0.2*x.^2);
x=[-3:0.03:3];
y= x.^2+2;

hfig = figure(1);
lw = 1.2;

%plot(x,y, 'Color', 'w', 'linewidth', lw);
%hold on;
plot(x,y, 'Color', 'b', 'linewidth', lw);
%axis([0,6,-1,1]);
axis([-3,3, 0.75, 12]);
fontsize = 16;
xlabel('$x$','fontsize',fontsize, 'interpreter', 'latex');
ylabel('Function value','fontsize',fontsize, 'interpreter', 'latex') ;
set(gca,'fontsize', fontsize)
set (gca, 'xminortick', 'off', 'yminortick', 'off') 
%    legend('', 'f(x)','Location', 'NorthEast');
print(hfig, '-depsc', 'fun');
system('epstopdf fun.eps');

z = y+0.2*y.*randn(size(y));
hold on
plot(x,z, 'Color', 'r', 'linewidth', lw);
%axis([0,6,-1,1]);
%axis([-1,1,0,3]);


%legend('f(x)', 'f(x) + noise','Location', 'SouthWest');
legend('Fairy tale', 'Reality','Location', 'NorthEast');
print(hfig, '-depsc', 'nfun');
system('epstopdf nfun.eps');
