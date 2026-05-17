clc;
clear;
close all;

% Time vector
fs = 1000;
t = 0:1/fs:1;

% Original signal
f = 5;
signal = sin(2*pi*f*t);

% Add noise
noise = 0.5*randn(size(t));
noisy_signal = signal + noise;

% Design low pass filter
filtered_signal = movmean(noisy_signal,10);

% Plot results
figure;

subplot(3,1,1);
plot(t,signal);
title('Original Signal');
grid on;

subplot(3,1,2);
plot(t,noisy_signal);
title('Noisy Signal');
grid on;

subplot(3,1,3);
plot(t,filtered_signal);
title('Filtered Signal');
grid on;