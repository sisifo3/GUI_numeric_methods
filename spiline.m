%clear all;
close all;
%cls;

lis_ofx = zeros(1,5);
lis_ofy = zeros(1,5);
disp(lis_ofx)

t = 0;
%x = -1;
%y = 0;


x = (((64*t - 352/3)*t +60)*t - 14/3)*t-1;
y = ((((((-64/3)*t) + 48)*t) -116/3)*t +11)*t;

lis_ofx(1) = x;
lis_ofy(1) = y;


t = 0.25;
%x = -1;
%y = 0;


x = (((64*t - 352/3)*t +60)*t - 14/3)*t-1;
y = ((((((-64/3)*t) + 48)*t) -116/3)*t +11)*t;

lis_ofx(2) = x;
lis_ofy(2) = y;




t = 0.5;
%x = -1;
%y = 0;


x = (((64*t - 352/3)*t +60)*t - 14/3)*t-1;
y = ((((((-64/3)*t) + 48)*t) -116/3)*t +11)*t;

lis_ofx(3) = x;
lis_ofy(3) = y;




t = 0.75;
%x = -1;
%y = 0;


x = (((64*t - 352/3)*t +60)*t - 14/3)*t-1;
y = ((((((-64/3)*t) + 48)*t) -116/3)*t +11)*t;

lis_ofx(4) = x;
lis_ofy(4) = y;


t = 1;
%x = -1;
%y = 0;


x = (((64*t - 352/3)*t +60)*t - 14/3)*t-1;
y = ((((((-64/3)*t) + 48)*t) -116/3)*t +11)*t;

lis_ofx(5) = x;
lis_ofy(5) = y;




disp('x value')
disp(x)
disp('y value')
disp(y)
disp(lis_ofx)
plot(lis_ofx,lis_ofy,'o')