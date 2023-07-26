clc;clear all;close all;

syms y(t)
eqn = diff(y, t) == 4*y;
cond = y(0) == 5;
ySol(t) = dsolve(eqn)

ySol(t) = dsolve(eqn, cond)

ySol(t) = dsolve('D2y + 2*Dy + y = 0')

clc;clear all;close all;

syms y(t) a b
eqn = diff(y, t, 2) == a^2*y;
Dy = diff(y,t);
cond = [y(0)==b, Dy(0)==1];
ySol(t) = dsolve(eqn, cond)