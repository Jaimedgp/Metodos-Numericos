%Q(x) = a * x^2 * exp(-x*b)

clc
clear all
close all


load datospluma.mat

%x = x(1:40);
%Q = Q(1:40);

%%
Qmod = log(Q./x.^2);

%plot(x,Qmod)

p = polyfit(x,Qmod,1);

%Q(x) = a * x^2 * exp(-x*b)
a = exp(p(2))
b = p(1)

hold on
    xTh = linspace(0, max(x), 1000);
    QTh = a*xTh.^2.*exp(b*xTh);
    
    plot(x, Q, 'x')
    plot(xTh, QTh)
hold off
    
%%
Qmod = log(Q./x)

%plot(x,Qmod)

p = polyfit(x,Qmod,2)

%Q(x) = a * x * exp(-x^2*b)
a = exp(p(3))
b = p(1)

hold on
    xTh = linspace(0, max(x), 1000);
    QTh = a*xTh.*exp(p(2)*xTh).*exp(b*xTh.^2);
    
    plot(x, Q, 'x')
    plot(xTh, QTh)
hold off