close all;
clear all;
clc;
n=-6:6;
y=[1 0.5 1 0.5 1 0.5 1 0.5 1 0.5 1 0.5 1];
   
value=2;
temp=1;
for i=1:length(n)
    if(rem(n(i),value)==0)
        x1(temp)=n(i)./value;
        y1(temp)=y(i);
        temp=temp+1;
    end;
end
subplot(3,1,1);
stem(n,y,'r');
xlabel("Time domain");
ylabel("Amplitude");
grid on;

axis([-10 10 -2 2]);
title("Original signal");

subplot(3,1,2);
stem(x1,y1,'g');
xlabel("Time domain");
ylabel("Amplitude");
grid on;
grid minor;
axis([-10 10 -2 2]);
title("Compresion signal Y[n]=X[2n]");
index=1;
n2=-12:12;
for i=1:length(n2)
    x1(i)=n2(i);
    if(rem(n2(i),2)==0)
        y1(i)=y(index);
        index=index+1;
    else
        y1(i)=0;
    end
end
subplot(3,1,3);
stem(x1,y1,'b');
xlabel("Time domain");
ylabel("Amplitude");
grid on;
grid minor;
axis([-12 12 -2 2]);
title("Compresion signal Y[n]=X[n/2]");