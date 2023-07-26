clc;clear all;close all;

syms x;
y = exp(x^4);
diff(y)

clc;clear all;close all;

syms y t;
f = 5*y^2 * cos(3*t);
SB = diff(f)  
SB_1 = diff(f, t)
SB_2 = diff(f, t, 2)
SB_3 = diff((SB_1), t)