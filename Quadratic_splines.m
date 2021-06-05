function [s,sl] = Quadratic_splines(h,hq)
%Quadratic Splines
%From the book Applied Numeric Methods Steven C. Chapra
%pag 459

xi = [3.0,4.5,7.0,9.0];
fi = [2.5,1.0,2.5,0.5];


%s1 = 2.5 - (x-3);
%s2 = 1 - (x-4.5) + 0.64*(x-4.5);
%s3 = 2.5 + 2.2*(x-7) -(1.6*(x-7).^2);

%h = .1;

x1 = 3:h:4.5;
s1 = 2.5 - (x1-3);
%plot(x1,s1)
%hold on

x2 = 4.5:h:7;
s2 = 1 - (x2-4.5) + 0.64*(x2-4.5).^2;
%plot(x2,s2)
%hold on


x3 = 7:h:8.5;
s3 = 2.5+2.2*(x3-7) - (1.6*(x3-7).^2);
%plot(x3,s3)
%hold off

x = [x1 x2 x3];
s = [s1 s2 s3];

sl = length(s);


%data_Qspli.txt

if hq == 1
    T = table(s, 'VariableNames', { 's'} );
    writetable(T, 'data_Qspli.txt')
end


plot(x,s,'*')
xlabel('x')
ylabel('f(x)')
title('Quadratic Spline');
legend('s(x)')
%plot(xi,fi)
%hold off
%plot(x,s2)
%hold off
end