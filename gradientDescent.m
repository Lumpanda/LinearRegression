function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y);
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    sumT1 = 0; sumT2 = 0;
    for row = 1:m
        sumT1 = sumT1 + ( theta(1,1)*X(row,1) + theta(2,1)*X(row,2) - y(row,1) )* X(row,1);
        sumT2 = sumT2 + ( theta(1,1)*X(row,1) + theta(2,1)*X(row,2) - y(row,1) )* X(row,2);
    end
    theta(1,1) = theta(1,1) - alpha /m * sumT1;
    theta(2,1) = theta(2,1) - alpha /m * sumT2;

    J_history(iter) = computeCost(X, y, theta);

end

end
