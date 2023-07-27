%% Parag Mandal - ENG20CS0246 / DAY 2

%% Taylor's Series
clc;clear all;close all;
syms x
S = sin(x);
V = taylor(S, x, pi/2, 'order', 6)
V1 = taylor(S, x, 0, 'order', 12)

%% Symbolic Representation

clc;clear all;close all;

syms x y a b c
f = a*x^2 + b*x + c;
f

clc;clear all;close all;

syms a x 

f = 2*a/3 + 4*a/7 - 6.5*x + x/3 + 4*5/3 -1.5;
f

clc;clear all;close all;

syms a b c x
f = sqrt(a*x^2 + b*x +c);
pretty(f)

clc;clear all;close all;

syms x
S = (x^2 + 5*x +6)/(x+2);
Si = simplify(S)

%% Plots

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

%% ODE

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

%% Limits

clc;clear all;close all;
syms x
S = 2*x*sin(1/x);
V = limit(S, x, inf)
V1 = limit(S,x, 0, "left")
V2 = limit(S,x, 0, "right")

%% Integration

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

%% Face

a = imread("PROF-PIC .jpg");
imshow(a)
b = imresize(a, 0.8);
detector = vision.CascadeObjectDetector("Mouth");
detector.MergeThreshold = 100;
bbox = step(detector, b)
out = insertObjectAnnotation(b, "rectangle", bbox, 'detection')
imshow(out)

%% Differentiation

clc;clear all;close all;

syms x;
y = exp(x^4);
diff(y)

clc;clear all;close all;

syms y t;
f = 5*y^2 * cos(3*t);
SB = diff(f)  
SB_1 = diff(f, t)
SB_2 = diff(f, t, 2)
SB_3 = diff((SB_1), t)

%% Colored Chips

clc;clear all;close all;

rgb = imread('coloredChips.png');
imshow(rgb)
figure
gray_image = rgb2gray(rgb);
imshow(gray_image);
figure
[centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark')
[centers, radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark', 'Sensitivity',0.9)

imshow(rgb);
h = viscircles(centers,radii);

%% Cell

clc;clear all;close all;

I = imread('cell.tif');
figure, imshow(I), title('original image');
[~, threshold] = edge(I, 'sobel');
fudgeFactor = .5;
BWs = edge(I,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');
se90 = strel('line', 3, 90);
se0 = strel('line', 3, 0);
BWsdil = imdilate(BWs, [se90 se0]);
figure, imshow(BWsdil), title('dilated gradient mask');
BWdfill = imfill(BWsdil, 'holes');
figure, imshow(BWdfill);
title('binary image with filled holes');
BWnobord = imclearborder(BWdfill, 4);
figure, imshow(BWnobord), title('cleared border image');
seD = strel('diamond',1);
BWfinal = imerode(BWnobord,seD);
BWfinal = imerode(BWfinal,seD);
figure, imshow(BWfinal), title('segmented image');
BWoutline = bwperim(BWfinal);
Segout = I;
Segout(BWoutline) = 255;
figure, imshow(Segout), title('outlined original image');

%% Birds

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
