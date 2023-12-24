% Dữ liệu mẫu
x = [1, 2, 3, 4, 5];
y = [2.3, 3.5, 4.2, 4.8, 5.1];

% Hồi quy hàm logarithmic
coefficients = polyfit(x, log(y), 1);

% Tính giá trị dự đoán từ mô hình hồi quy
x_pred = linspace(min(x), max(x), 100);
y_pred = exp(polyval(coefficients, x_pred));

% Hiển thị kết quả
figure;
scatter(x, y, 'o', 'DisplayName', 'Dữ liệu mẫu');
hold on;
plot(x_pred, y_pred, 'r', 'DisplayName', 'Hồi quy hàm logarithmic');
xlabel('Biến độc lập');
ylabel('Biến phụ thuộc');
legend;
grid on;
