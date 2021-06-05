function [] =   Metodo_de_Newton_Raphson()

i = 1:5;
x = zeros(1,5);


for j = 1:4
    
    x(j+1) =  x(j) - ((exp(-x(j))) - x(j))/((-exp(-x(j))) - 1);
end

plot(i,x)




end