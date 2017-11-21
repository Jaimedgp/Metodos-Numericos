f = @(v) v(1).*sin(v(2));
f = @(x, y) x*sin(y);

a = 0; b=4;
c = pi;
d = 2*pi;

%%

k1 = 10;
k2 = 20;

S = compositesimpson2D(f, a, b, c, d, k1, k2)

%%

n = 4;
m = 5;

I = gausslegendre2d(f, a, b, c, d, n, m)
