clc
clear all
close all
%Ejercicio 3.6 del libro de la asignatura.
%Se define la tabla de datos
t=[1.00 1.01 1.02 1.03 1.04];
i=[3.10 3.12 3.14 3.18 3.24];
L=0.98;
R=0.142;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%     CALCUALMOS LA DERIVADA        %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h=0.01; 

df0 = (i(2)-i(1))/h;
df1 = (i(3)-i(1))/2*h;
df2 = (i(1)-8*i(2)+8*i(4)-i(5))/(12*h);
df3 = (i(3)-i(5))/2*h;
df4 = (i(4)-i(5))/(-h);

df = [df0 df1 df2 df3 df4]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%     CALCUALMOS LA INDUCTANCIA     %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

V0 = L*df0 + R*i(1);
V1 = L*df1 + R*i(2);
V2 = L*df2 + R*i(3);
V3 = L*df3 + R*i(4);
V4 = L*df4 + R*i(5);

V = [V0 V1 V2 V3 V4]

plot(t, V, t, i)