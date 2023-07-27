%% Parag Mandal - ENG20CS0246 / DAY 1

%% Basic MATLAB Tutorial

%% P1
clc;clear all;close all;
t=0:0.02:30;
plot(t)
figure
a=sin(t);plot(a)
figure
b=cos(t);plot(b)

%% P2
clc;clear all;close all;
t=0:0.02:30;
plot(t)
figure
a=sin(t);plot(a)
hold on
b=cos(t);plot(b)

%% P3
clc;clear all;close all;

a=100;
b=200;

c=a+b
d=a-b
e=a*b
f=a/b
g=a\b
h=a^b

% P4
clc;clear all;close all;

a=100;
b=200;
v=3.4;
format short;
c=a*b^v

%% P5
clc;clear all;close all;

l = input("Enter the length: ");
w = input("Enter the width: ");
h = input("Enter the height: ");
vol=l*w*h;

fprintf("\nThe Volume is: %d\n", vol)

%% P6
clc;clear all;close all;
A = [1 2 3; 4 5 6; 7 8 9]
A(:,:,2) = [10 11 12; 13 14 15; 16 17 18]
B = cat(3,A,[3 2 1; 0 9 8; 5 3 7])
B(:,:,4) = 0

%%

%% SpringDamp_c.m
Kd=0.01;
Ks=0.02;
m=65;

%% EMF_a.m
R=1;
L=0.2;
Il=0.005;
Kb=0.22;
Kt=0.2;
