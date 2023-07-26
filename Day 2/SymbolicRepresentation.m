clc;clear all;close all;

syms x y a b c
f = a*x^2 + b*x + c;
f

clc;clear all;close all;

syms a x 

f = 2*a/3 + 4*a/7 - 6.5*x + x/3 + 4*5/3 -1.5;
f

clc;clear all;close all;

syms a b c x
f = sqrt(a*x^2 + b*x +c);
pretty(f)

clc;clear all;close all;

syms x
S = (x^2 + 5*x +6)/(x+2);
Si = simplify(S)