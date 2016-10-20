function J = computeCost(X, y, theta)

m = length(y);
J = 0;
sumJ = 0;

for row=1:1:m
   sumJ = sumJ + ( theta(1,1)*X(row,1) + theta(2,1)*X(row,2) - y(row,1)  )^2 ;
end

J = sumJ/2/m;


end
