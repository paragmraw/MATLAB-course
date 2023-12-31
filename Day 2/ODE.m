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

clc;clear all;close all;
syms x(t)
k = input('Enter Growth Rate: ');
ode = diff(x, t) == k*x;
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
