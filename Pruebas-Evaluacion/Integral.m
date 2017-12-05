clc 
T = linspace(-1,1, 10);
x = [0 1 2 4];
f = zeros(1,length(T));
for i=1:length(T)
    y = [0 T(i) 3 -6];
    p = polyfit(x, y, 3);
    f(i) = polyval(p, 2.6);
end

F = polyfit(T, f, 9);
FF = @(T) polyval(F, T)
gausslegendre(FF, -1, 1, 5)