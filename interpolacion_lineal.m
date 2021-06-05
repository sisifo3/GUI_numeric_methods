function [fx] = interpolacion_lineal(h,h1)
%lineal interpolation
%From the book metodos numericos para ingenieros Steven C. Chapra
%pag 505

%f1(x) = f(x0) + ((f(x1) - f(x0))/(x1-x0))(x-x0)
%h1 = 1;
x = 1:h1:10;
lnx = log(x);

plot(x,lnx)
hold on

%results for x0 = 1 ,x1= 6
fx0 = log(1);
fx1 = log(6);
x0 = 1;
x1 = 6;

x = 1:h:6;
fx = fx0 + ((fx1 - fx0)/(x1-x0))*(x-x0);
plot(x,fx)
hold on


%results for x0 = 1 ,x1= 4
fx0 = log(1);
fx1 = log(4);
x0 = 1;
x1 = 4;

x = 1:h:4;
fx = fx0 + ((fx1 - fx0)/(x1-x0))*(x-x0);
plot(x,fx)
hold off

xlabel('x')
ylabel('f(x)')
legend('ln(x)','linear estimation 1 (1-6)','linear estimation 2 (1-4)')
title('Linear Interpolation');

end