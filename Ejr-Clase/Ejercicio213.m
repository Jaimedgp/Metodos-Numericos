%  Ejercicio 2.13 de los apuntes de la asignatura

% Se asegura de que la consola de MATLAB esta vacia

clc;
clear all;
close all;

x = -1:1/5:1; % se crea el vector con los puntos -1, -8/10, -6/10, ..., 8/10, 1
fx = 1./ (1+25.*x.^2); % se evalua la funcion en los puntos

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   AJUSTE POLINOMIAL   %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p = polyfit(x, fx, 10); % se obtiene el polinomio del ajuste polinomial

% se crean los vectores con los datos teoricos obtenidos del polinomio del
% ajuste
xTh = linspace(-1,1);
yTh = polyval(p, xTh);

% Se representan ambos datos
hold on 
    plot(x, fx, 'ro'); % Datos experimentales
    plot(xTh, yTh, 'b'); % Datos teoricos del ajuste
    plot(xTh, 1./ (1+25.*xTh.^2), 'g') % La funcion de verdad
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   INTERPOLACION SPLINER   %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('Hola')


