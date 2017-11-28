function p=puntofijo(g,p,epsilon,M)
% Dada la funcion g y el punto inicial p, realiza el metodo del punto fijo
% hasta alcanzar una precision epsilon. El programa realiza un maximo de M iteraciones
contador=1;
mierror=1;
while (mierror>epsilon) && (contador<=M)
  contador=contador+1;
  gp=g(p);
  mierror=abs(gp-p);
  p=gp;
  contador=contador+1;
end
if contador==(M+1)
  error('Se ha alcanzado el numero maximo de iteraciones');
end