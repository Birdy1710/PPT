
f = @(x) 3*x^3 - 8*x^2 - 20*x + 16;
[nghiem,solanlap] = chiadoi(f,0.2,1,0.004)
function [nghiem,solanlap] = chiadoi(f,a,b,saiso)
i = 0; 
if f(a)*f(b) > 0
    disp('Phuong trinh vo nghiem');
else
    c=(a+b)/2;
while abs(f(c)) > saiso
    if f(a)*f(c) > 0
        a=c;
    else
        b=c;
    end
    c=(a+b)/2;
    i = i+1;
end
end
nghiem = c;
solanlap = i;
end