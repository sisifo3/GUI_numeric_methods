function[ansr] =  rung_ku(inx)
%Metodos Numericos para ingenieros Chapra  
% page 746
%método Runge kutta

f_tiyi = @(t,y) 4*exp(0.8*t) -0.5*y;

h = 0.5;
ti = 0;
yi = 1;

for i = 1:4
    t = ti;
    y = yi;
    k1 = f_tiyi(t,y);
    
    t = ti + h/2;
    y = yi + (h*k1)/2;
    k2 = f_tiyi(t,y);
    
    t = ti + h/2;
    y = yi + (h*k2)/2;
    k3 = f_tiyi(t,y);
    
    t = ti + h;
    y = yi + (h*k3);
    k4 = f_tiyi(t,y);
    
    phi = (1/6)*(k1 + 2*k2 + 2*k3 + k4);
    yi = yi + phi*h;
    ti = ti + h;

    yii(i) = yi;
    tii(i) = ti;
    %it = it + 1;
    
end    

ansr = k1;

if inx == 2
    ansr = k2;
elseif inx == 3
    ansr = k3;
elseif inx == 4
    ansr = k4;
end



plot(tii, yii);
hold on;
scatter(tii, yii);
grid on;
title('Método Runge-Kutta de 4to Orden');
xlabel('t');
ylabel('y');
hold off



end