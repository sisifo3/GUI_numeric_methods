function[f] = fourier_3(n,h,e)
%Fourier Series 
%Problem 28.4,24.9,24.10

%h = .1;
%n = 4;

x = -n*(pi):h:n*(pi);

%f = x.^2;
if e ==1
    %28.4
    f = (pi/2)-(4/pi)*((cos(x)/1^2) + (cos(3*x)/3^2)+(cos(5*x)/5^2)); 
elseif e == 2
    %24.9
    f = 2*((sin(x)/1)- (sin(2*x)/2) + (sin(3*x)/3));
elseif e == 3
    %24.10
    f = pi - 2*((sin(x)/1)+(sin(2*x)/2) + (sin(3*x)/3));
elseif e == 4
    %24.11
    f = (2/pi) - (4/pi)*((cos(2*x)/(1*3)) + (cos(4*x)/(3*5)) +(cos(6*x)/(5*7)));
end

%if hf == 1
%    T = table(f2, 'VariableNames', { 'f'} );
%    writetable(T, 'data_fx_f.txt')
%end

%plot(x,f)
%hold on

plot(x,f)
xlabel('x')
ylabel('f(x)')
legend('f(x)')
title('Fourier Series');


end