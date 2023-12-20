close all;
clear all;
clc;

n1= input ('Enter lower limit');
n2= input ('Enter upper limit');
n= n1: 1: n2;
x=n.*[n>=0];
stem (n, x, 'b');
axis([(n1-1) (n2+1) -1 (n2+1)]);   % -x,x,-y,y
title (' Ramp Function ');
xlabel ('time');
ylabel ('Amplitude of Y');
