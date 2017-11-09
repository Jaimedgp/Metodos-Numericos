function dev=numericalDerivate(f,x,method)
%Donde f es la función a derivar, x los puntos (vector columna), y method que tipo de
%derivada quieres usar.
h=0.1;
n=length(x);
dev=zeros(n,1);
if method == 'forward'
    for k=1:n
        dev(k)=(f(x(k)+h)-f(x(k)))/(h);
    end
elseif method == 'central' && n >= 3
    for k=1:n
        dev(k)=(f(x(k)+h)-f(x(k)-h))/(2*h);
    end
elseif method == 'fivepoints' && n >= 5
    for k=1:n
        dev(k)=(f(x(k)-2*h)-8*f(x(k)-h)+8*f(x(k)+h)-f(x(k)+2*h))/(12*h);
        
    end
end