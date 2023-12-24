function [ KQ ] = tichphanhinhthang( fx, a, b, N )
    h = (b-a)/N;
    sum = 0;
    for i = 1:(N-1)
        k = a + i*h;
        q = fx(k);
        sum = sum + q;
    end
    KQ = (h/2)*(fx(a) + fx(b) + 2*sum);
end


