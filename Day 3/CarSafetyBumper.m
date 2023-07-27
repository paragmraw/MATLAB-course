clc;clear all;close all;
k=30; m=1500;
bumpereq=@(x,v) -(k*v^2*(x+1)^3)/m;

xspan=0:0.2:3;
v0mps=90*1000/3600;
[x,v] = ode45(bumpereq, xspan, v0mps);
plot(x,v)
xlabel('x(m)'); ylabel('Velocity(m/s)')