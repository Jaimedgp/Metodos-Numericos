function integral = IntSimpson(a, b, f, n)
    % Funcion que te calcula la integral de la funcion f en el intervalo
    % [a,b] mediante la regla de Simpson. El error de la integral
    % viene dado por  - ((b-a)^5 /2880)  * f(iv)(chi)
     k = (b-a)/n;
    integral = 0;
    fin = a;
    for i=1:n
        begin = fin;
        fin = a+i*k;
        integral = integral + ((fin-begin)/6 * (f(begin) + 4*f((begin+fin)/2) + f(fin)));
end