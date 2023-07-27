clc;clear all;close all;
syms x(t);
ode = diff(x,t) == 3000*exp(2*t/5);

xsol(t) = dsolve(ode);
cond = x(0) == 1000;
xsol(t) = dsolve(ode, cond);
n = input('Time (in years): ');
Population_Size = subs(xsol(t), t, n)

t = 0:n;
X = xsol(t);
plot(t, X, 'r--o')
xlabel('Time');
ylabel('Population Size');
grid on