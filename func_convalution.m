function[n, y]=func_convalution(x1,y1,x2,h)
m1=min(x1)+min(x2);
m2=max(x1)+max(x2);

n=m1:m2;
y=conv(y1,h); % build in function