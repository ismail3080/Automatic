clear all;
close all;
clc;
%gain
num = [0 0.186];
den = [1 -0.776];
% ls cfct
hz_inv = tf(num,den,-1);
disp('fct dr trsndfere h(z^-1) est :');
step(hz_inv)
grid on