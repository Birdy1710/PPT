function [fx,kq]=Hoiquylogarit(x_array,y_array,giatri)
syms x;    syms x;
    n = length(x_array);
    sumx = sum(x_array);
    sumy = sum(y_array);
    sumxy = sum(x_array .* y_array);
    sumx2 = sum(x_array.^2);
    
    x_tb = sumx / n;
    y_tb = sumy / n;
    
    a1 = (n * sumxy - sumx * sumy) / (n * sumx2 - sumx^2);
    a0 = y_tb - a1 * x_tb;
    
    a0=10^a0; 
    a1=vpa(a1,4);
    fx= vpa(a0*x.^a1,4);
    fx1=str2func(['@(x)', char(fx)]);
    kq=fx1(giatri);
end