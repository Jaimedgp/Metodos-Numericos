% Escribir la funcion a minimizar:
function P = potencialAtomos(M)
    % Dados un numero de atomos con posiciones (X, Y)
    % dadas por la primera y segunda columna de M
    % (ambos son vectores), calculamos su potencial
    X = M(:,1);
    Y = M(:,2);
    P = 0;
    N = length(X);
    
    for j = 1:N
       for k = j+1:N
           distancia =norm([X(j);Y(j)] - [X(k); Y(k)]);
           P = P+1/distancia^12 - 2/distancia^6;
       end
    end
    P = 2*P;