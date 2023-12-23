function [nghiem, solanlap] = chiadoi(~, f, a, b, saiso)
 solanlap = 0;
 while abs(b-a) >= saiso
 solanlap = solanlap + 1;
 c = (a+b)/2;
 if f(c)*f(a) < 0
 b = c;
 elseif f(c)*f(a) > 0
 a = c;
 else
 break;
 end
 end
 nghiem = c;
 end
%  3*x^3 - 8*x^2 -20*x +16
% (3/20)*x^3 - (8/20)*x^2 + 16/20

