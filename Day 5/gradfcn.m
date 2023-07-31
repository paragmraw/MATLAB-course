function grad = gradfcn(x,y)
%gradfcn
%  compute gradient of log(1 + 3*(y - (x^3 - x))^2 + (x - 4/3)^2)

% Copyright 2010-2019, The MathWorks, Inc.
grad = zeros(2,1);

grad(1) = -(6*(3*x^2-1)*(-x^3+x+y)-2*x+8/3) / ((x-4/3)^2+3*(-x^3+x+y)^2+1);
grad(2) = (-6*x^3+6*x+6*y) / ((x-4/3)^2+3*(-x^3+x+y)^2+1);
