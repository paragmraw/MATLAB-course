function Hess = hessfcn(inputVariables,~)
%hessfcn
%  compute Hessian of log(1+ 3*(y - (x^3 -x))^2 + (x - 4/3)^2)

% Copyright 2010-2019, The MathWorks, Inc.
%% Variable indices.
idx_x = 1;
idx_y = 2;

%% Map solver-based variables to problem-based.
x = inputVariables(idx_x);
y = inputVariables(idx_y);

%%
Hess = zeros(length(inputVariables));

Hess(1,1) = (6*(3*x^2-1)^2 - 36*x*(-x^3+x+y) + 2) / ((x-4/3)^2 + 3*(-x^3+x+y)^2 + 1) ...
    - (6*(3*x^2-1)*(-x^3+x+y) - 2*x + 8/3)^2 / ((x-4/3)^2 + 3*(-x^3+x+y)^2+1)^2;
Hess(2,1) = (6*(-x^3+x+y)*(6*(3*x^2-1)*(-x^3+x+y) - 2*x + 8/3)) / ((x-4/3)^2 + 3*(-x^3+x+y)^2 + 1)^2 ...
- (18*x^2 - 6) / ((x-4/3)^2 + 3*(-x^3+x+y)^2 + 1);
Hess(1,2) = Hess(2,1);
Hess(2,2) = 6 / ((x - 4/3)^2 + 3*(-x^3+x+y)^2 + 1) ...
    - 36*(-x^3+x+y)^2 / ((x-4/3)^2 + 3*(-x^3+x+y)^2 + 1)^2;
