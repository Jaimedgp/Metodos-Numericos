classdef Interpolacion

	properties

		xValues = input('Valores de X: ');
		yValues = input('Valores de Y: ');

	end

	methods

		%% Polynomial: function description
		function [pCoef] = Polynomial(self, n)
            xTheorical = linspace(min(self.xValues), max(self.xValues), 200);
            
			pCoef = polyfit(self.xValues, self.yValues, n);

			yTheorical = polyval(pCoef, xTheorical);

			hold on
				plot(self.xValues, self.yValues, 'ro'); % Datos experimentales
				plot(xTheorical, yTheorical, 'b'); % Datos teoricos del ajuste
				title('Interpolacion polinomial')
				legend('Experimentales', 'Interpolacion')
			hold off

		end


		%% SplinesCubicos: function description
		function [] = SplinesCubicos(self)
            xTheorical = linspace(min(self.xValues), max(self.xValues), 200);
			yTheorical = spline(self.xValues, self.yValues, xTheorical);

			% Se representan ambos datos
			hold on 
				plot(self.xValues, self.yValues, 'ro'); % Datos experimentales
				plot(xTheorical, yTheorical, 'b'); % Datos teoricos del ajuste
				title('Splines cubicos')
				legend('Experimentales', 'Splines')
			hold off

		end


		%% Chebyshev: function description
		function [xk] = Chebyshev(self, n, func)
            xTheorical = linspace(min(self.xValues), max(self.xValues), 200);
            
			b = max(self.xValues)
			a = max(self.yValues)

			k = 0:n; %se crea un vector de 0 a n			
			xk = cos(pi*(2*k+1) / (2*n+2) )  * ((b-a)/2) + ((b+a)/2);

			yTheorical = eval(func)

			% Se representan ambos datos
			hold on 
				plot(self.xValues, self.yValues, 'ro'); % Datos experimentales
				plot(xTheorical, yTheorical, 'g') % La funcion de verdad
				title('Chebyshev')
				legend('Experimentales', 'Nodos')
			hold off

        end
        
        function c = MinimosCuadrados(self, m, func1, func2)
            xTheorical = linspace(min(self.xValues), max(self.xValues), 200);
            
            x = self.xValues';
            y = self.yValues';
            n = length(self.xValues);
            A = zeros(n,m);
            for i=1:n
                A(i,:) = [eval(func1) eval(func2)];
            end

            C = A\y;
           
            x = xTheorical;
            
            for i=1:length(x)
                yTheorical(i) = C(1)*eval(func1) + C(2)*eval(func2);
            end
            
            % Se representan ambos datos
			hold on 
				plot(self.xValues, self.yValues, 'ro'); % Datos experimentales
				plot(xTheorical, yTheorical, 'g'); % La funcion de verdad
				title('Chebyshev');
				legend('Experimentales', 'Nodos');
			hold off
            
        end

	end

end