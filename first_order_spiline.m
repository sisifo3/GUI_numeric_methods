function[s] = first_order_spiline(h)
%First - Order Splines
%From the book Applied Numeric Methods Steven C. Chapra
%pag 456

%i = [1,2,3,4];
xi = [3.0,4.5,7.0,9.0];
fi = [2.5,1.0,2.5,0.5];

%si(x) = (fi) + (((f(i+1))-fi)/((xi+1)-xi))(x-xi);
%Para saber los valores por ejemplo de  x=4.5 a x = 7
%h = 0.5;
x = 4.5:h:7;
s = 1 + (((2.5-1.0))/(7.0-4.5)) * (x-4.5);

plot(xi,fi)
hold on
plot(xi,fi,'o')
hold on
plot(x,s,'*')
hold off

xlabel('x')
ylabel('f(x)')
title('First Order Spline');
legend('first-order-spline','f(x)','s2(x)')

end