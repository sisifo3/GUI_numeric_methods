function[me,mxr] = falsa_posicion(n)
%false posicion
%metodos numericos para ingenieros.
%pagina 134


%xi : x inferior
%xs : x superior

%xi : 12
%xu : 16

%
%

%xr : aproximacion de la raiz de x 
%xr = xu - (f(xu)(xi-xu))/(f(xi)-f(xu))


xi = 12;
xu = 16;
fxi = 6.0699;
fxu = -2.2688;

me = zeros(1,n);
mxr = zeros(1,n);
for i = 1:n
    xr = xu - (fxu*(xi-xu))/(fxi-fxu);
    error = ((xr -14.7802)/xr)*100;
    xu = xr;
    c = xu;
    fc = ((667.38/c)*(1-exp(-.146843*c)))-40;
    fxu = fc;
    %fxu = (fxi/(xr-xi))*(xr-xu);
    
    %disp(fxu)
    
    me(i) = error;
    mxr(i) = xr;
end


%c = 14.9113;
%fc = ((667.38/c)*(1-exp(-.146843*c)))-40;
xi = 12;
xr = 14.9113;
xu = 16;
fxi = 6.0699;



fxu = (fxi/(xr-xi))*(xr-xu);

disp(fxu)
disp(me)
disp(mxr)

plot(me)
xlabel('Error')
ylabel('Iteration')
title('False Position error')
legend('error')
end