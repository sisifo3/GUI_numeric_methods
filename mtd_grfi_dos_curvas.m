function[y1,y2,y3] = mtd_grfi_dos_curvas(n)
%metodo grafico de dos curvas.
%Metodos numericos para ingenieros
%pag 144


x = 0:n:1;
lx = length(x);

y1 = zeros(1,lx);
y2 = zeros(1,lx);
y3 = zeros(1,lx);

for i = 1:lx
    y1(i) = x(i);
    y2(i) = exp(-x(i));
    y3(i) = exp(-x(i)) -x(i);
    if y3(i) > 0
        r3 = y3(i);
        ri3 = i;
    end
end        

plot(y1)
hold on 
plot(y2)
plot(y3)
plot(ri3,r3,'*')
hold off
xlabel('iteration')
ylabel('f(x)')
title('The graphical method of the two curves');
legend('f(x) = x','f(x) = exp(-x)','f(x) = exp(-x)-x')


end