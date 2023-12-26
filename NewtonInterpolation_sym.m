function [p] = NewtonInterpolation_sym(xa, ya, x)
syms x;
 n = length(xa);
 da = ya;
 for i = 1:n
  for j = 1:(i-1)
   da(i) = (da(j) - da(i))/(xa(j) - xa(i));
  end
 end
 m = length(da); 
 f = da(m); 
 for i = (m-1):-1:1
     f = f * (x - xa(i)) + da(i);
 end
 p = f
end

