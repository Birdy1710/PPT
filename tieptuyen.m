
f = @(x) 3*x^3 - 8*x^2 - 20*x + 16;
[nghiem,solanlap] = PPtieptuyen(f,0.2,0.85,0.005)
function [nghiem,solanlap]= PPtieptuyen(f,a,b,saiso)
    syms x
    count = 0;
    fd1 = str2func(['@(x)' char(diff(f(x)))]);
    fd2 = str2func(['@(x)' char(diff(fd1(x)))]);
    x(1) = a;
    while f(x(1)) * fd2(x(1)) < 0
        x(1) = (x(1)+b)/2;
    end
    for i = 2:10000
        count = count + 1;
        x(i) = double(x(i-1) - (f(x(i-1)) / fd1(x(i-1))));
        if abs (x(i) - x(i-1)) < saiso
            break;
        end
    end
    nghiem = double(x(i))
    solanlap = count;
end