f = @(v) v(1)^2 + v(2)^2 +4;

    % Devuelve el punto z en el que se minimiza la funcion y el valor de f
    % en z, fz
[z, fz] = fminunc(f, [1;7]);

    % Minimizamos ahora nuestra funcion
N = 100; % Numero de atomos
m = 100; % numero de pruebas
Pmin = inf;
for j=1:m
    inicial = randn(100,2);
    [Msol, PotencialMsol] = fminunc(@(M) potencialAtomos(M)...
                            , inicial);
    if PotencialMsol < Pmin
        Mmin = Msol;
        Pmin = PotencialMsol;
    end
end
                    
X = Mmin(:,1); % Posiciones X de los puntos finales
Y = Mmin(:,2); % Posiciones Y de los puntos finales

plot(X,Y,'o')
axis equal