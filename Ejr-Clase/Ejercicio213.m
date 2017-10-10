%  Ejercicio 2.13 de los apuntes de la asignatura

% Se asegura de que la consola de MATLAB esta vacia

clc;
clear all;
close all;

x = -1:1/5:1; % se crea el vector con los puntos -1, -8/10, -6/10, ..., 8/10, 1
fx = 1./ (1+25.*x.^2); % se evalua la funcion en los puntos

xTh = linspace(-1,1, 200); % vector para los puntos teoricos

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   AJUSTE POLINOMIAL   %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p = polyfit(x, fx, 10); % se obtiene el polinomio del ajuste polinomial

% se crean los vectores con los datos teoricos obtenidos del polinomio del
% ajuste
yTh = polyval(p, xTh);

% Se representan ambos datos
hold on 
    plot(x, fx, 'ro'); % Datos experimentales
    plot(xTh, yTh, 'b'); % Datos teoricos del ajuste
    plot(xTh, 1./ (1+25.*xTh.^2), 'g') % La funcion de verdad
    title('Interpolacion polinomial')
    legend('Experimentales', 'Interpolacion', 'Funcion real')
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%      SPLINES CUBICOS   %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

yTh = spline(x, fx, xTh); % Interpolacion por splines cubicos

% Se representan ambos datos
hold on 
    plot(x, fx, 'ro'); % Datos experimentales
    plot(xTh, yTh, 'b'); % Datos teoricos del ajuste
    plot(xTh, 1./ (1+25.*xTh.^2), 'g') % La funcion de verdad
    title('Splines cubicos')
    legend('Experimentales', 'Splines', 'Funcion real')
hold off

%%%%%%%%%%%%%%%%%%%%%%%%
%%      CHEBYSHEV    %%%
%%%%%%%%%%%%%%%%%%%%%%%%

xTh = Chebyshev(-1, 1, 100);

% Se representan ambos datos
hold on 
    plot(x, fx, 'ro'); % Datos experimentales
    plot(xTh, 1./ (1+25.*xTh.^2), 'g') % La funcion de verdad
    title('Chebyshev')
    legend('Experimentales', 'Nodos')
hold off


