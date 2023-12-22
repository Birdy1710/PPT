f = @(x) ((3*x^3 - 8*x^2 + 16)/20);
[nghiem,solanlap] = PPlap(f,0.2,1,0.004)
function [nghiem,solanlap] = PPlap(f,a,b,saiso)
  x(2) = b;
  x(1) = a;
  i = 2;
  for i = i:100000
      x(i) = f(x(i-1));
      if abs(x(i) - x(i-1)) < saiso
          break;
      end
  end
  nghiem = x(i);
  solanlap = i;
end