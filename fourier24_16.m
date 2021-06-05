function[f,f2] = fourier24_16(h)
%Fourier Series 
%Problem 24.16

%f(x) = x(pi-x)(pi+x)  -pi<x<pi
%h = .5;

x = -pi:h:pi;
f = x.*(pi-x).*(pi+x);

plot(f)
hold on

f2 = 12*((sin(x)/1) - ((sin(2*x))/(2^3)) + ((sin(3*x))/(3^3)));
plot(f2)
hold off
xlabel('x')
ylabel('f(x)')
legend('f2(x)','f(x)')
title('Fourier Series');

end