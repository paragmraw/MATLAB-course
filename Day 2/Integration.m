clc;clear all;close all;

syms x t
S = 2*cos(x) - 6*x;
E1 = int(S)
E2 = int(S,t)

clc;clear all;close all;

syms y t;
S = 5*y^2 * cos(4*t);
E1 = int(S)
E2 = int(S, t)

clc;clear all;close all;

syms x;
S = (-2*x)/((1+x^2)^2);
E1 = int(S, x)
E2 = int(S, 0, 2)
E3 = int(S, x, 0, 2)