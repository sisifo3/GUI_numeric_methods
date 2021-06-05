function[f,x,error] = Newton_Raphson_Method(n,h)
%Newton_Raphson_method for root
%book Applied Numerical Methods with Matlab Steven Chapra
%pag 169
%root: 0.56714329.
%n = 20;


x = zeros(1,n);
error = zeros(1,n);
error(1) = 100;

for i = 1:n
    x(i+1)=x(i)-((exp(-x(i))-x(i))/(-exp(-x(i)) - 1));
    error(i+1) = ((x(i+1) -0.56714329)/x(i+1))*100;
end

f = -exp(-x)-1;

data(:,1) = f;
data(:,2) = x;
data(:,3) = error;

%disp(data)

if h == 1
    T = table(data, 'VariableNames', { 'f'} );
    writetable(T, 'data_NRM.txt')
end


plot(f)
hold on 
plot(x)
hold off
xlabel('x')
ylabel('f(x)')
legend('f(x)','x')
title('Newton Raphson Method');
end