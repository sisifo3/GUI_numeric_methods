% Created by Irene Vigué-Guix
% February 5th 2020 - Barcelona, Catalonia, Spain

% This MATLAB script was created to import OpenBCI datasets, select the EEG
% data, ands save it as ".mat" files. 


clear all;
close all;
clc;

% LOAD FILES

infile = 'OpenBCI-RAW-2020-06-06_00-52-48.txt';
data = load(infile, '-ascii');    

% GENERAL PARAMETERS

% Separate EEG data and auxiliary data         
eegdata = data(:,2:9);          % EEG data
auxdata = data(:,10:12);        % Aux data

% General variables
time = (0:4:length(eegdata)*4-1)';  % Time vector
N_ch = 8;                           % Number of channels

% Band-pass Filtering Paramaters
fsamp = 250;                    % Sampling frequency
tsample = 1/fsamp;              % Period of samples
f_low = 12;                     % Cut frequency for high-pass filter
f_high = 8;                     % Cut frequency for low-pass filter

% PRE-PROCESSING
% Bandpass Filter
for i=1:N_ch
    EEG(:,i)= bandpass_filter_8ch(eegdata(:,i), fsamp, f_low, f_high);
end


raw1(1,:) = EEG(:,3);
xr = 1:length(raw1);


xrt = xr(1,1:1000);
rawt = raw1(1,1:1000);
%disp(rawt)
%plot(xrt,rawt)



