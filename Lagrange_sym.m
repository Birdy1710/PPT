function [p] = Lagrange_sym(xa, ya, x)
syms x;
n = length(xa);
sum = 0;
for i = 1:n
    f = ya(i); %𝑓(𝑥𝑖)
    for j = 1:n
        if (i ~= j)
            f = f*(x - xa(j))/(xa(i) - xa(j));%𝐿𝑖(𝑥)*𝑓(𝑥𝑖)
        end
    end
sum =  sum + f; %sum->phương trình cần tìm chứa x
end
p = sum % p(x) là tổng chuỗi với x là biến
end

 
