% El potencial de lennar Jones p = A/d^12 + B/d^6

clc
close all
clear all

load Ar.rawdata.dat
size(Ar_rawdata)

d = Ar_rawdata(50:150,1);
P = Ar_rawdata(50:150,2);

P = P+P.*randn(size(P))*0.1;

n = length(d);
A = zeros(n,2);
for i=1:n
    A(i,:) = [1/d(i)^12 1/d(i)^6];
end

C = A\P;

plot(d, P, 'x');

hold on
xx = linspace(min(d),max(d));
q = length(xx);
yy = zeros(q, 1);
for i=1:q
    yy(i) = C(1)*(1/xx(i)^12)+C(2)*(1/xx(i)^6);
end
plot(xx, yy);
hold off