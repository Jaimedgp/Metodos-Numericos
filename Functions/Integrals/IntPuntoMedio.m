function integral = IntPuntoMedio(a, b, f, n)
    % Funcion que te calcula la integral de la funcion f en el intervalo
    % [a,b] mediante la regla del punto medio compuesta. Para ello se 
    % divide el intervalo [a,b] en n subintervalos. El error de la 
    % integral viene dado por (b-a)^3 /24 * f''(chi)
    k = (b-a)/n;
    integral = 0;
    fin = a;
    for i=1:n
        begin = fin;
        fin = a+i*k;
        integral = integral + ((fin-begin)*f((fin+begin)/2));
end