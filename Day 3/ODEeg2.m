clc;clear all;close all;
odeeg2=@(t,y) (t^3-2*y)/t;
tspan=1:0.005:3;
y0=4.2;
[t,y] = ode45(odeeg2, tspan, y0);
plot(t, y)
xlabel('t'), ylabel('y')