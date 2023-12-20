clc;
clear;

n = -3:3;
x= [-2 0 1 -3 2 -1 3]
subplot(3,1,1);
stem (n,x);
xlabel('Time Sample');
ylabel('Amplitude');
title('Original Signal');
axis([-7 7 -3 3]);
grid on;
grid minor;
 
m = n+3; 
subplot(3,1,2);
stem (m,x);
xlabel('Time Sample');
ylabel('Amplitude');
title('Time right shifted signal');
axis([-7 7 -3 3]);
grid on;
grid minor;

l = n-2; 
subplot(3,1,3);
stem (l,x);
xlabel('Time Sample');

ylabel('Amplitude');
title('Time left shifted signal');
axis([-7-2-4 7+2-4 -3 3]);
grid on;
grid minor;
