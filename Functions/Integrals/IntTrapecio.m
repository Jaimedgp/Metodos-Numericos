function integral = IntTrapecio(a, b, f, n)
    % Funcion que te calcula la integral de la funcion f en el intervalo
    % [a,b] mediante la regla del Trapecio. El error de la integral
    % viene dado por  - ((b-a)^3 /12)  * f''(chi)
     k = (b-a)/n;
    integral = 0;
    fin = a;
    for i=1:n
        begin = fin;
        fin = a+i*k;
        integral = integral + ((fin-begin)* (f(begin) + f(fin))/2);
end

error = -((b-a)^3 / (12*n))
printf("El error es de: %g *f''(chi)", Error)
