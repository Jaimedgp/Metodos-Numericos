% Ejercicio 3.6 de los apuntes de la asignatura
% El objetivo es obtener V(t) a partir de la expresion V(t) = L*i'+R*i
% para lo cual se ha de calcular la derivada de i a partir de la tabla

% Se asegura que la consola de MATLAB esta vacia

clc;
clear all;
close all;

t = [1.00 1.01 1.02 1.03 1.04]; % tiempo en segundo
i = [3.10 3.12 3.14 3.18 3.24]; % corriente en amperios

L = 0.98 % iductancia
R = 0.142 % resistencia en ohmios

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%   CALCULO DE LA DERIVADA DE i %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h = 0.01 % el intevalo h es siempre 0.01



