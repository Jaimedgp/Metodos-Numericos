function dev = numericalderivative(f, xdata, method)

    dev = zeros(length(xdata),1)
    h = 0.1
    if method == 'forward'
        for k=1:length(xdata)
            dev(k) = (f(xdata(k)+h)-f(xdata))/h;
        end
            
    end