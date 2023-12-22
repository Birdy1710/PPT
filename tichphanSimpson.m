function [ KQ ] = tichphanSimpson( fx, a, b, N )
    h = (b-a)/N;
    s1 = 0;
    s2 = 0;
    for i = 1:2:N-1
        m = a + i*h;
        p = fx(m);
        s1 = s1 + p;
    end
    for i = 2:2:N-1
        n = a + i*h;
        q = fx(n);
        s2 = s2 + q;
    end
    KQ = double(h/3*(fx(a) + fx(b) + 4*s1 + 2*s2));
end

