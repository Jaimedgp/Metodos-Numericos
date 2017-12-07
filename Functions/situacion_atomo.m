function x = situacion_atomo(A)

    P = @(t) 1/(t+1)^12 - 3/(t+1)^6 + A/(1-t)^12 - 1/(1-t)^6;
    
    h = 0.0001;
    Pderi = @(t) (P(t-2*h) - 8*P(t-h) + 8*P(t+h) - P(t+2*h)) / (12*h);
    
    x = biseccion(Pderi, 0.3, 0.99999, 0.0000001, 1000000);