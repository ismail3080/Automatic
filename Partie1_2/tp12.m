clear all;
close all;
clc;
%gain
k=1;
t=1;
n=3;
theta=t/(2*n);
%periode tau
To= t/n;
%fct
p=tf('p');
H = k/(1+To*p)^n;
%Approximation de l'exponentielle retard
[N_delay,D_delay]= pade (theta,1);
delay = tf(N_delay,D_delay);
%affichage de la courbe 
Hp = H*delay;
step(Hp)
title('systeme en retard');
grid on;
