function[] = interpolacion_langrage()
%polinomios de interpolacion de langrage 
%From the book metodos numericos para ingenieros Steven C. Chapra
%pag 517

%x0 = xt(1)
%x1 = xt(2)
%x2 = xt(3)
%f(x0) = ft(1)
%f(x1) = ft(2)
%f(x2) = ft(3)
%xt = in:h:fn;
%ft = log(xt);
xt = [1,4,6];
ft = [0,1.386294,1.791760];
%f1(x) = ((x-x1)/(x0-x1)) f(x0) + ((x-x0)/(x1-x0)f(x1)
%f1(2)  
x = 2;
f1 = ( ((x-xt(2))/(xt(1) - xt(2))) * (ft(1))) + (((x-xt(1)))/(xt(2)-xt(1)))*ft(2); 


%Para evaluar f2, se descompone en f21,f22,f23 entonces
%f2 = f21 + f22 + f23;

%f21 = (((x-x1)(x-x2))/((x0-x1)(x0-x2)))(f(x0))
%f22 = (((x-x0)(x-x2))/((x1-x0)(x1-x2)))(f(x1))
%f23 = (((x-x0)(x-x1))/((x2-x0)(x2-x1)))(f(x2))

f21 = (((x-xt(2))*(x-xt(3)))/((xt(1)-xt(2))*(xt(1)-xt(3))))*(ft(1));
f22 = (((x-xt(1))*(x-xt(3)))/((xt(2)-xt(1))*(xt(2)-xt(3))))*(ft(2));
f23 = (((x-xt(1))*(x-xt(2)))/((xt(3)-xt(1))*(xt(3)-xt(2))))*(ft(3));

f2 = f21 + f22 + f23;

fx(1) = 0;
fx(2) = f1;
fx(3) = f2;

plot(xt,ft)
hold on
plot(xt,fx)
hold off
xlabel('x')
ylabel('f(x)')
legend('ln(x)','langrage estimation')
title('Langrage Interpolation');



end