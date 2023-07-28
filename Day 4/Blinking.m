clc; clear all; close all;
board = arduino('/dev/ttyACM0')
led = 'D13'
for k=1:10
    disp('Turn on LED');
    writeDigitalPin(board, led, 1);
    pause(1);
    disp('Turn off LED');
    writeDigitalPin(board, led, 0);
    pause(1);
end
disp('Close Arduino Board');
clear board;