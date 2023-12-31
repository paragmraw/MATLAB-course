%% Linear Interpolation (Default)
clc; clear all; close all;

x=0:5;
y=[15, 10, 9, 6, 2, 0];

plot(x, y, '-o')
grid on

new_x=3.5;
new_y=interp1(x, y, new_x);

%% Spline Interpolation
clc; clear all; close all;

T = [100, 150, 200, 250, 300, 400, 500];
u = [2506.7, 2582.8, 2658.1, 2733.7, 2810.4, 2967.9, 3131.6];
figure(1)
plot(u, T, '-o')
new_u=2680.78
new_T_linear=interp1(u, T, new_u); 
new_T_spline=interp1(u, T, new_u, 'spline');

new_u = linspace(2500, 3200, length(u));
new_T = interp1(u, T, new_u, 'spline');
figure(2)
plot(u, T, new_u, new_T, '-o')

%
new_u = linspace(2500, 3200, length(u));
new_T_linear = interp1(u, T, new_u, 'linear');
figure(3)
plot(u, T, new_u, new_T_linear, '-o')

%
new_u = linspace(2500, 3200, length(u));
new_T_cubic = interp1(u, T, new_u, 'cubic');
figure(5)
plot(u, T, new_u, new_T_cubic, '-o')

%
new_u = linspace(2500, 3200, length(u));
new_T_nearest = interp1(u, T, new_u, 'nearest');
figure(6)
plot(u, T, new_u, new_T_nearest, '-o')

%% Linear Interpolation on sin wave
clc; clear all; close all;

x = 0:pi/4:2*pi;
y = sin(x)
x_new=0:pi/16:2*pi;

y_new_linear = interp1(x, y, x_new);
figure(1)
plot(x, y, 'o', x_new, y_new_linear, 'r-*');
xlim([0 2*pi]);
title('Linear Interpolation');


%
y_new_spline = interp1(x, y, x_new);
figure(2)
plot(x, y, 'o', x_new, y_new_spline, 'r-*');
xlim([0 2*pi]);
title('Spline Interpolation');


%
y_new_cubic = interp1(x, y, x_new);
figure(3)
plot(x, y, 'o', x_new, y_new_cubic, 'r-*');
xlim([0 2*pi]);
title('Cubic Interpolation');


%
y_new_nearest = interp1(x, y, x_new);
figure(4)
plot(x, y, 'o', x_new, y_new_nearest, 'r-*');
xlim([0 2*pi]);
title('Nearest Interpolation');

%% Polyfit
clc; clear all; close all;
T = [100, 150, 200, 250, 300, 400, 500];
u = [2506.7, 2582.8, 2658.1, 2733.7, 2810.4, 2967.9, 3131.6];

n=1;
p=polyfit(u, T, n);

a=p(1)
b=p(2)

x=u;
ymodel=a*x + b;
plot(u, T, 'o', u, ymodel)

clc; clear all; close all;

x=[10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
y=[23, 45, 60, 82, 111, 140, 168, 198, 200, 220];

for n=2:5
    p = polyfit(x,y,n);

    ymodel=polyval(p,x);

    subplot(2,2,n-1)
    plot(x,y, 'o',x, ymodel)
    title(sprintf('Model of order %d', n));
end