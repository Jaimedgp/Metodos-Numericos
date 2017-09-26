% Ejercicio de reproducir el grafico de la figura 2.3 de los apuntes

clr % comando especial para borrar todo el historial

T = [2.3 2.7 2.9 3.2 3.5 3.7]; % Datos de la temperatura del helio en K
P = [6.38512 13.6218 18.676 28.2599 40.4082 49.9945]; % Datos de la presion en kPa

p = polyfit(T, P, 5); % Coeficientes del ajuste

% Para dibujar dos graficas a la vez se utiliza el hold on/off
hold on
    plot(T, P, 'x') % dibuja los puntos de los datos experimentales
    
    x = linspace(2.2, 3.8); % vector del eje x para dibujar el ajuste
    y = polyval(p, x); % funcion del ajuste para los valores de x
    plot(x,y) % Se dibuja encima el polinomio de ajuste
    
     % axis equal te pone el intervalo de ambos ejes igual
hold off