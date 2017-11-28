function c=biseccion(f,a,b,epsilon,M)

% Si los signos de f(a) y f(b) son diferentes se utiliza el metodo de biseccion
% para encontrar, con precision epsilon, una solucion de f(x)=0.
% Tambien incluimos un contador para hacer a lo mAs M iteraciones.

alpha=f(a);
beta=f(b);
if sign(alpha)==sign(beta)
  error('El signo de la funciOn debe cambiar en los extremos del intervalo');
end
mierror=1;
contador=1;
while (mierror>epsilon) && (contador<=M)
  c=a+(b-a)/2;
  gamma=f(c);
  if sign(gamma)~=sign(alpha)
    b=c;
  else
    a=c;
    alpha=gamma;
  end
  mierror=max(abs(gamma),b-a);
  contador=contador+1;
end
if contador==(M+1)
  error('Se ha alcanzado el numero maximo de iteraciones');
end