function [fx,kq]=Hoiquyhammu(x_array,y_array,giatri)
    syms x;
    n = length(x_array);
    % Chuyển đổi dữ liệu đầu vào thành logarithm tự nhiên
    X_array = log(x_array);
    Y_array = log(y_array);
    
    % Tính tổng cần thiết
    sumX = sum(X_array);
    sumY = sum(Y_array);
    sumXY = sum(X_array .* Y_array);
    sumX2 = sum(X_array.^2);
    
    % Tính trung bình
    x_tb = sumX / n;
    y_tb = sumY / n;
    
    % Tính hệ số hồi quy
    b = (n * sumXY - sumX * sumY) / (n * sumX2 - sumX^2);
    a = exp(y_tb - b * x_tb);
    
    % Xây dựng hàm hồi quy
    fx = a * x^b;
    
    % Hiển thị hàm hồi quy
    disp('Hàm hồi quy:');
    disp(fx);
    
    % Tính giá trị dự đoán cho giá trị đầu vào đã cho
    kq = a * giatri^b;
end