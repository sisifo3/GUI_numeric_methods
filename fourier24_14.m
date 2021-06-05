function[f2] = fourier24_14(h,n,hf)
%Fourier Series 
%Problem 24.14
%h = .1;
%n = 4;

x = -n*(pi):h:n*(pi);

%f = x.^2;

f2 = (pi^2/3) - 4*((cos(x)/1^2) - (cos(2*x)/2^2) + (cos(3*x)/3^2));

if hf == 1
    T = table(f2, 'VariableNames', { 'f'} );
    writetable(T, 'data_fx_f.txt')
end

%plot(x,f)
%hold on
plot(x,f2)
xlabel('x')
ylabel('f(x)')
legend('f2(x)')
title('Fourier Series');


end