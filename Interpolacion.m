classdef Interpolacion

	properties

		xValues = input('Valores de X: ');
		yValues = input('Valores de Y: ');

		xTheorical = linspace(min(xValues), max(xValues), 200);

	end

	methods

		%% Polynomial: function description
		function [pCoef] = Polynomial(self, n)
			pCoef = polyfit(self.xValues, self.yValues, n);

			yTheorical = polyval(pCoef, xTheorical);

			hold on
				plot(self.xValues, self.yValues, 'ro'); % Datos experimentales
				plot(self.xTheorical, yTheorical, 'b'); % Datos teoricos del ajuste
				title('Interpolacion polinomial')
				legend('Experimentales', 'Interpolacion')
			hold off

		end


		%% SplinesCubicos: function description
		function [] = SplinesCubicos(self)
			yTheorical = spline(self.xValues, self.yValues, self.xTheorical);

			% Se representan ambos datos
			hold on 
				plot(self.xValues, self.yValues, 'ro'); % Datos experimentales
				plot(self.xTheorical, yTheorical, 'b'); % Datos teoricos del ajuste
				title('Splines cubicos')
				legend('Experimentales', 'Splines')
			hold off

		end


		%% Chebyshev: function description
		function [xk] = Chebyshev(self, n, func)
			b = max(self.xValues)
			a = max(self.yValues)

			k = 0:n; %se crea un vector de 0 a n			
			xk = cos(pi*(2*k+1) / (2*n+2) )  * ((b-a)/2) + ((b+a)/2);

			yTheorical = eval(func)

			% Se representan ambos datos
			hold on 
				plot(self.xValues, self.yValues, 'ro'); % Datos experimentales
				plot(self.xTheorical, yTheorical, 'g') % La funcion de verdad
				title('Chebyshev')
				legend('Experimentales', 'Nodos')
			hold off

		end

	end

end
		
		
