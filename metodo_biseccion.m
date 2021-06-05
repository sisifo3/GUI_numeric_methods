function[f_xr,f_error] =  metodo_biseccion(h)
%Metodo de Biseccion
%obtenido del libro Metodos Numericos para ingenieros.
%pagina 124

%xi : x inferior
%xs : x superior
%xr : aproximacion de la raiz de x 
%xr = (xi + xs)/2
%xr = (12+16)/2;

%h = .1;
xi = 12:h:15;
xs = 15:-h:12;

n = 1;
error_act = 90;
m_error = [];
for i = 1: length(xi)
    for j = 1: length(xs)
        xr = (xi(i) + xs(j))/2;
        error = ((xr -14.7802)/xr)*100;
        m_error = [m_error, error]; 
        n = n+1;
        if error < error_act && error > 0
            error_act = error;
            f_error = error;
            f_xr = xr;
            f_xi = xi(i);
            f_xs = xs(i);
            m_error = [m_error error];
            tn = n;    
        end
    end
end

disp(f_error)
disp(f_xr)
disp(f_xi)
disp(f_xs)
plot(m_error)
hold on
plot(tn,f_error,'*')
title('Bisection Method');
xlabel('Iteration')
ylabel('Error')
legend('error','root')
hold off

end