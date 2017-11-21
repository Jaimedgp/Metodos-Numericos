function S=compositesimpson(f,a,b,k)
% Calcula la integral de f entre a y b con k subintervalos
% usando la regla compuesta de Simpson.
h=(b-a)/k;
S=f(a)+f(b)+4*f(b-h/2);
for n=1:k-1
    S=S+2*f(a+n*h)+4*f(a+n*h-h/2);
end
S=S*(b-a)/6/k;