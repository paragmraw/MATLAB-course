% Taylor's Series Expansion of pi/2 at x=90 deg
clc;clear all;close all;
syms x
S = sin(x);
V = taylor(S, x, pi/2, 'order', 6)
V1 = taylor(S, x, 0, 'order', 12)
