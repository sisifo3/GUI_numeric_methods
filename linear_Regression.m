function [] =  linear_Regression()
%code from book Applied Numeric Methods Steven C. Chapra
%pag 360

%xm : means of x
%ym : means of y

xi = [10,20,30,40,50,60,70,80];
yi = [25,70,380,550,610,1220,830,1450];

drag = yi./(xi.^2);

disp(drag)
xq = xi.^2;
xiyi = xi.*yi;
n = length(xi);

%The means can be computed as
xm = sum(xi)/n;
ym = sum(yi)/n;

%The slope and the intercept can then be calculated with Eqs. (14.15) and
%(14.16) of the book
a1 = ((n*sum(xiyi)) - (sum(xi)*sum(yi)))/((n*sum(xq))-((sum(xi))^2 ));
a0 = ym - (a1*xm);

xp = linspace(min(xi),max(xi),2);
yp = a1*xp+a0;

plot(xi,yi,'o',xp,yp)
grid on
xlabel('v,m/s')
ylabel('F,N')
title('Linear Regression');


end