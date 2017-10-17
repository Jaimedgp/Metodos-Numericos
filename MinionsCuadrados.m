datosx = [1 2 3 4 5]';
datosy = [0.24 0.25 0.32 0.41 0.5]';

m = 2;
n = length(datosx);
A = zeros(n,m);
for i=1:n
    A(i,:) = [datosx(i) exp(-datosx(i))];
end

C = A\datosy;

plot(datosx, datosy, 'x');

hold on
xx = linspace(1,5);
plot(xx, C(1)*xx+C(2)*exp(-xx));
hold off