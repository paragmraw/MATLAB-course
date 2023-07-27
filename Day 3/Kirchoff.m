clc; clear all; close all;
%INITIALIZING THE VARIABLES
V1=22; V2=12; V3=44;
V = [-V1;0;V2;V3]
R1=30; R2=20; R3=15; R4=7;R5=16; R6=10; R7=10; R8=15;

%CREATE THE RESISTANCE MATRIX
R = [-(R1+R2+R3) R2 R3 0;
    R2 -(R2+R4+R5+R7) R4 R7;
    R4 R4 -(R3+R4+R6) R6;
    0 R7 R6 -(R6+R7+R8)];

%GET THE CURRENT VECTOR AS SOLUTION
I = inv(R)*V;

%ALLOT VALUES TO FOUR CURRENTS
i1=I(1)
i2=I(2)
i3=I(3)
i4=I(4)

%PRINT THE CURRENT(S)
fprintf('The current in resistor R2 is %f A\n', i1-i2)
fprintf('The current in resistor R2 is %f A\n', i1-i3)
fprintf('The current in resistor R2 is %f A\n', i2-i3)
fprintf('The current in resistor R2 is %f A\n', i4-i3)
fprintf('The current in resistor R2 is %f A\n', i4-i2)