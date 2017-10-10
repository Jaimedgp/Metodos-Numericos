% Practica experimental en el que se estudia el numero de golpes de una 
% pelota contra el suelo en funcion de la altura a la que se lanza

clc;close all;clear all; % Se borra todo el historial de MATLAB
altura = [1.6 1.8 2]; % alturas de la pelota en las 3 muestras
golpes = [18.5 15 12.5]; % numero de golpes obtenidos
p = polyfit(altura, golpes, 2); % ajuste de los datos experimentales
aa = linspace(1.6, 2); % Vector para el ajuste teorico
paa = polyval(p,aa); % Evaluar la funcion del ajuste en el vector teorico
plot(aa, paa, altura, golpes, 'o') % Representacion de los valores experimentales y teoricos
polyval(p, 1.7) % se obtiene el numero de golpes teoricos para una altura 1.7m
polyval(p, 1.9) % se obtiene el numero de golpes teoricos para una altura 1.9m