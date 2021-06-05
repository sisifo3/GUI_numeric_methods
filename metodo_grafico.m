function[ind,f] = metodo_grafico(ci,cf)
%Raicez metodo grafico. 
%From the book metodos numericos para ingenieros Steven C. Chapra
%pag 121

c = ci:4:cf;

%c = [4,8,12,16,20];
f = zeros(1,length(c));
v = 40;
m = 68.1;
t = 10;
g = 9.8;

for i = 1:length(c)
    f(i) = ((g*m)/c(i))*(1-exp(-(c(i)/m)*t)) - v;
end

ay = zeros(1,length(c));
ax = f;

plot(c,f)
hold on
plot(ax,ay)
hold on
plot(c,f,'o')
xlabel('c')
ylabel('f(c)')
title('Graphical Method');


%found a specific root
c = 12:.01:15;
f0 = zeros(1,length(c));
for j = 1:length(c)
    f0(j) = ((g*m)/c(j))*(1-exp(-(c(j)/m)*t)) - v;
    if f0(j) > 0
        ind = c(j);
    end
end
plot(ind,0,'o')
hold off
legend('f(c)','f(c) = 0','root')





end