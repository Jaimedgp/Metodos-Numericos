function I=gausslegendre2d(f,a,b,c,d,n,m)
% Estima la integral de f en[a,b]x[c,d] con n nodos
% en la direccion del eje x y m nodos en la del eje y
% utilizando Fubini y la regla de Gauss Legendre
I=gausslegendre(@(x) gausslegendre(@(y) f(x,y),c,d,m) ,a,b,n);