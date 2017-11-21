function S=compositesimpson2D(f,a,b,c,d,k1,k2)
% Calcula la integral de f entre a y b con k subintervalos
% usando la regla compuesta de Simpson.
h2=(d-c)/k2;
for n=1:2*k2+1
    valor_y=c+h2/2*(n-1);
    T(n)=compositesimpson(@(x) f(x,valor_y),a,b,k1);% suma de la fila k-esima
end
S=T(1)+T(end)+4*T(end-1);
for j=1:k2-1
    S=S+2*T(2*j+1)+4*T(2*j);
end
S=S*(d-c)/6/k2;
