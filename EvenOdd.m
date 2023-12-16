clc;
close all;

%orginal signal
n=-6:6;
y=[0 0 0 0 -1 -1 0 1 1 0 0 0 0];
subplot(3,1,1);
stem(n,y);
axis([-10 10 -2 2]);
xlabel('n');
ylabel('amplitude');
title('x[n]');

%shifting the given signal
n1=n-3;
subplot(3,1,2);
stem(n1,y);
axis([-10 10 -2 2]);


value=2;

temp=1;
for i=1:length(n1)
    if(rem(n1(i),value)== 0)
        x1(temp)=n1(i)./ value;
        y1(temp)=y(i);
        temp=temp+1;
    end

end

%final signal
subplot(3,1,3);
stem(x1,y1);
axis([-10 10 -2 2]);
xlabel('n');
ylabel('amplitude');
title('y[n]=x[2n+3]');