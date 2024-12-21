clear all;
close all;
clc;
%gain
k=1;
t=1;
n=3;
%periode tau
To= t/n;
%fct
p=tf('p');
H = k/(1+To*p)^n;
%affichage de la courbe 
step(H)
grid on;

