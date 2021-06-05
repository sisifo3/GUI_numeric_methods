function [f2] = interpolacion_cuadratica(n)
%ajuste los polinomios de segundo grado a los tres puntos 
%quadratic interpolation
%From the book metodos numericos para ingenieros Steven C. Chapra
%pag 507

%x0 = xt(1);
%x1 = xt(2);
%x2 = xt(3);
%f(x0) = ft(1);
%f(x1) = ft(2);
%f(x2) = ft(3);

xt = [1,4,6];
ft = [0,1.386294,1.791759];

%b1 = (f(x1)-f(x0))/ (x1-x0)
b1 = (ft(2) - ft(1)) / (xt(2) - xt(1));

%b2 = (((f(x2)-f(x1))/(x2-x1)) - ((f(x1) - f(x0)) / (x1-x0))) / (x2-x0)
b2 = (((ft(3) - ft(2))/(xt(3) - xt(2))) - ((ft(2) - ft(2)) / (xt(3) - xt(1)))) - (xt(3) - xt(1));

%f2 = f2(x)
x = 1:n:10;
f2 = 0 + (0.4620981.*(x-1)) - (0.0518731.*(x-1).*(x-4));    

%f(x) = ln(x)
lnx = log(x);

plot(x,f2)
hold on
plot(x,lnx)
hold on
xlabel('x')
ylabel('f(x)')
legend('f2(x)','ln(x)')
title('Quadratic Interpolation');
hold off
end


