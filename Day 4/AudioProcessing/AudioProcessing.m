clear all; close all; clc;

%% Record the Audio
recorder = audiorecorder;
disp("Start speaking now: ")
recordblocking(recorder, 20)
disp("End of the recording")

%% Visualizing the Spectrum
play(recorder)
myaudio = getaudiodata(recorder)
sa = dsp.SpectrumAnalyzer
step(sa, myaudio)

%% Design the HPF
Fs = 44.1e3;
filtertype = 'FIR';
Fpass=12e3;
Fstop=8e3;
Rp=0.1;
Astop=80;
FIRHPF=dsp.HighpassFilter('SampleRate',Fs, ...
    'FilterType',filtertype, ...
    'PassbandFrequency',Fpass, ...
    'StopbandFrequency',Fstop, ...
    'PassbandRipple',Rp, ...
    'StopbandAttenuation',Astop);

%% Filter the audio signal
