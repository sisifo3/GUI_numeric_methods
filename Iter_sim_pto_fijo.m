function [errora,errort,x] = Iter_sim_pto_fijo(n,ht)
%Interacción simple de punto fijo
%Metodos numericos para ingenieros Chapra
%pag 144
%raíz: 0.56714329.
%n = 10;
x = zeros(1,n);
errora = zeros(1,n);
x(1) = 0;
errora(1) = 100; 
for i = 1:n
    x(i+1) = exp(-x(i));
    errora(i+1)  = (((x(i+1)-x(i))/x(i+1))*100);

end

errort  = (((.56714329-x)./0.56714329).*100);


errora = abs(errora);
errort = abs(errort);

data(:,1) = x;
data(:,2) = errora;
data(:,3) = errort;

%ht = 0;
if ht == 1
    T = table(data, 'VariableNames', { 'column'} );
    writetable(T, 'data_ispf.txt')
end

plot(errora) 
hold on 
plot(errort)
hold off
xlabel('iteration')
ylabel('error')
title('Simple fixed point iteration');
legend('Ea','Et')
%disp(data)
end