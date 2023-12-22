
function approximate_derivative = forwardDifferenceDerivative(func, evaluation_point, h, order_of_accuracy)
    % Kiểm tra order_of_accuracy có phải là 1 hoặc 2 không
    if order_of_accuracy ~= 1 && order_of_accuracy ~= 2
        error('Chỉ hỗ trợ giá trị sai số O(h) hoặc O(h^2).');
    end
    
    % Tính đạo hàm bằng phương pháp chuỗi Taylor chiều tiến
    if order_of_accuracy == 1
        approximate_derivative = (func(evaluation_point + h) - func(evaluation_point)) / h;
    else
        approximate_derivative = (-func(evaluation_point + 2*h) + 4*func(evaluation_point + h) - 3*func(evaluation_point)) / (2 * h);
    end
    
    approximate_derivative = double(approximate_derivative);
    %fprintf('Đạo hàm tại điểm đánh giá %.2f là: %.4f\n', evaluation_point, approximate_derivative);
end


