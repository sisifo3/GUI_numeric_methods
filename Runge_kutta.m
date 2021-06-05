%% inicializar ecuación
syms
yp = '4*exp(0.8*t) - 0.5*y';
%% valores iniciales
ti =0;
yi =1;
%% salto o taza de cambio
h = 0.5;
%% rango de integración
to = 0;
tf = 1;
tii(1) = ti;
yii(1) = yi;
it = 2;
k =1;
for i = to : h : tf - h
    %% obtener K1
    t = ti;
    y = yi;
    k1 = double(subs(yp));
    %% obtener K2
    t = ti + h/2;
    y = yi + (h*k1)/2;
    k2 = double(subs(yp));
    %% obtener k3
    t = ti + h/2;
    y = yi + (h*k2)/2;
    k3 = double(subs(yp));
    %% obtener K4
    t = ti + h;
    y = yi + (h*k3);
    k4 = double(subs(yp));
    %% calculo de y(i+1) y t(i+1)
    phi = (1/6)*(k1 + 2*k2 + 2*k3 + k4);
    yi = yi + phi*h;
    ti = ti + h;
    %%
    yii(it) = yi;
    tii(it) = ti;
    it = it + 1;
end
%% graficar
plot(tii, yii);
hold on;
scatter(tii, yii);
grid on;
title('Método Runge-Kutta de 4to Orden');
xlabel('t');
ylabel('y');