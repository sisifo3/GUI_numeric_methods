function[errorl] = euler_method(h)%,ti,tf)
% Metodo de euler
%pagina 720

%h = 1;
ti = 0;
tf = 10;

f_tiyi = @(t,y) 4*exp(0.8*t) -0.5*y;

t = ti:h:tf;
len_t = length(t);
%disp(len_t)

y_a = zeros(1,len_t);
anser = zeros(len_t,3); 

%the ecuation for real solution.

y = (4/1.3)*(exp(0.8*t)-exp(-0.5*t)) + 2*exp(-0.5*t);
y_a(1) =y(1); 

for j = 1:len_t
    f = f_tiyi (t(j),y_a(j));
    if j ~= len_t
        y_a(j+1) = y_a(j) + f*h;
    end
end

error = ((y - y_a)./y) * 100;

for k = 1:len_t
    anser(k,1) = y(k);
    anser(k,2) = y_a(k);
    anser(k,3) = error(k);
end    

errorl = anser(:,3);

plot(t,y)
hold on
plot(t,y_a)
xlabel('Value t'); ylabel('value y');
hold off
grid
legend('True', 'Predict')
title('Euler Method');

end