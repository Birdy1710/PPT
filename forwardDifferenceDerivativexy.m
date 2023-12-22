function derivative_at_evaluation_point = forwardDifferenceDerivativexy(x_values, f_values, evaluation_point, order_of_accuracy)
    % Kiểm tra độ dài của chuỗi đầu vào
    if length(x_values) ~= length(f_values)
        error('Độ dài của chuỗi x và chuỗi f phải giống nhau.');
    end
    
    % Kiểm tra order_of_accuracy có phải là 1 hoặc 2 không
    if order_of_accuracy ~= 1 && order_of_accuracy ~= 2
        error('Chỉ hỗ trợ giá trị sai số O(h) hoặc O(h^2).');
    end
    
    % Tính đạo hàm bằng phương pháp chuỗi Taylor chiều tiến
    h = x_values(2) - x_values(1); % Giả sử khoảng cách giữa các điểm x là h (đơn giản để tính toán)
    
    % Tính đạo hàm bằng O(h) hoặc O(h^2) tùy thuộc vào order_of_accuracy
    if order_of_accuracy == 1
        derivative = (f_values(2:end) - f_values(1:end-1)) / h;
    else
        derivative = (-f_values(3:end) + 4*f_values(2:end-1) - 3*f_values(1:end-2)) / (2 * h);
    end
    
    % Tính giá trị đạo hàm tại điểm đánh giá
    evaluation_index = find(x_values == evaluation_point);
    derivative_at_evaluation_point = derivative(evaluation_index - 1);
    
end
