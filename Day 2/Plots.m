clc;clear all;close all;

ezplot('x^2')
figure
ezplot('x^2', [-2, 2])
hold on
ezplot('sin(x)', [-2*pi, 2*pi])
figure


x=[0:5];
y=2.^x;
plot(x, y, '-or')

x = linspace(-10,10,1000);
y=2.^x;
plot(x, y, '-or')

t = linspace(0,10,100);
s=t.^2/2;
plot(t,s,'-or')
xlabel('Time(sec)');
ylabel('Distance(m)');
legend('Distance')
title('Distance as a function of time')
gtext('s=t^2/2')
grid on

[x, y, z] = sphere(100)
surf(x,y,z)

t = linspace(0,pi,50);
r = 1 + sin(t);
[X, Y, Z] = cylinder(r)
surf(X,Y,Z)