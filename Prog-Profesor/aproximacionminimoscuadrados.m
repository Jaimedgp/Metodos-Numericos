function [coefs,y]=aproximacionminimoscuadrados(a,b,F,x,plotme)
% Dado un vector fila de funciones F proporciona la combinacion lineal
% de las funciones que contiene que mejor aproxima por minimos 
% cuadrados los datos en la tabla a,b, que son vectores de igual tamanno.
% el programa devuelve el vector de coeficientes y los valores de 
% la aproximacion en el vector x.
% Si "plotme" vale 1 dibuja los resultados.
% Ejemplo de uso:
% a=[-1;0;1;2;3];
% b=[-2;0;0;-2;-6];
% F=@(x) [x x.^4]
% [coefs,y]=aproximacionminimoscuadrados(a,b,F,x,1);
n=length(a);
m=length(F(a(1)));
A=zeros(n,m);
for i=1:n
  A(i,:)=F(a(i));
end
coefs=A\b; % Resuelve el problema con los metodos de Matlab
y=x;
for k=1:length(x)
  y(k)=F(x(k))*coefs;
end
if plotme==1
  plot(a,b,'x',x,y);
end