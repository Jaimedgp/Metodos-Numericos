% Ejercicio 2.10 de los apuntes de la asignatura

% Se asegura de que la consola de Matlab esta vacia

clc % borra la pantalla
clear all 
close all

x = linspace(0,5,10); % se crea los 10 puntos del intervalo [0,5]
f1 = sin(x.^2); % SE calcula la funcion en los puntos de x

p = polyfit(x,f1, length(x)-1); % calcula los coeficientes del polinomio del ajuste

xT = linspace(0,5); % se crean los puntos para el ajuste
py = polyval(p, xT); % se calculan los puntos de y con el polinomio del ajuste

xk = Chebyshev(0,5,100); % Nodos de Chebyshev
fxk = sin(xk.^2)

hold on 
    plot(xT, sin(xT.^2), 'g') % grafica de la funcion
    plot(xT, py, 'b') % grafica de los putos del ajuste
    plot(x, f1, 'ro') % grafica de los puntos "experimentales"
    plot(xk, fxk, 'k') % grafica con los nodos de Chebyshev
hold off



