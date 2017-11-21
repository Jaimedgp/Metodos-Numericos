%%%%% Tabla para integracion de Gauss--Legendre %%%%%
function [nodos,pesos]=nodosypesosgl(n)
if n==1
  nodos=0;
  pesos=2;
elseif n==2
  nodos=[-0.5773502692,0.5773502692];
  pesos=[1 1];
elseif n==3
  nodos=[-0.7745966692,0,0.7745966692];
  pesos=[ 0.5555555556,0.8888888889,0.5555555556];
elseif n==4
  nodos=[-0.8611363116,-0.3399810436,0.3399810436,0.8611363116];
  pesos=[0.3478548451,0.6521451549,0.6521451549,0.3478548451];
elseif n==5
  nodos=[-0.9061798459,-0.5384693101,0,0.5384693101,0.9061798459];
  pesos=[0.2369268850,0.4786286705,0.5688888889,0.4786286705,0.2369268850];
else
  error('No tengo esos numeros tabulados');
end
  