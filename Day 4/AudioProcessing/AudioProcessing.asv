clear all; close all; clc;
recorder = audiorecorder;
disp("Start speaking now: ")
recordblocking(recorder, 5)
disp("End of the recording")
play(recorder)
myaudio = getaudiodata(recorder)
sa = dsp.SpectrumAnalyzer
step(sa, myaudio)