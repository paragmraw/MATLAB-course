clc;clear all;close all;
syms x
S = 2*x*sin(1/x);
V = limit(S, x, inf)
V1 = limit(S,x, 0, "left")
V2 = limit(S,x, 0, "right")