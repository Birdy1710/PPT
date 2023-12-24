function [ KQ ] = tichphanSimpson38( fx, a, b, N )
    h = (b-a)/N;
    sum = 0;
    for i = 1:(N-1)
        k = a + i*h;
        if mod(i,3)==0
            sum = sum + 2*fx(k);
        else
            sum = sum + 3*fx(k);
        end
    end
    KQ = (3*h/8)*(fx(a) + fx(b) + sum);
end

