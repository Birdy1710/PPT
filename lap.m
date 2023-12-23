function [nghiem, solanlap] = lap(~,fp,a,b,saiso)
 x0 = a;
 nghiem = b;
 solanlap = 0;
 while abs(nghiem - x0) >= saiso
 solanlap = solanlap + 1;
 x0 = nghiem;
 nghiem = fp(x0);
 end
 end
