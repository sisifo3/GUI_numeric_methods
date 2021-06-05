function[y] = polynomial_regression(n)
%Polynomial Regression
%From the book Applied Numeric Methods Steven C. Chapra
%pag 387

xi = 0:1:n;


xia = [0,1,2,3,4,5];
yi = [2.1,7.7,13.6,27.2,40.9,61.1];

y = 2.4786 + (2.3593*xi) + (1.8607*xi.^2);

plot(xia,yi,'o')
hold on
plot(xi,y)
hold off
legend('xi-yi','Least squares parabola')
title('Polynomial Regression');
xlabel('x')
ylabel('y')



end