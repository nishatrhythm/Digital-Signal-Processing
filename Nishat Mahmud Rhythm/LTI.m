clc;
close all;

x1=[0 1 2 3 4 5 6];
y1=[0.5 2 0 0 0 0 0];
x2=[-1 0 1 2 3 4 5];
h=[0 1 1 1 0 0 0];

subplot(3, 1, 1);
stem(x1,y1);
xlabel('X1');
ylabel('Y1');
grid on;
title("Given Signal");

subplot(3, 1, 2);
stem(x2,h);
xlabel('X2');
ylabel('h');
grid on;
title("Impulse Response");

m1=min(x1)+min(x2);
m2=max(x1)+max(x2);

a=m1:m2;
b=conv(y1,h);

subplot(3, 1, 3);
stem(a,b);
xlabel('a');
ylabel('b');
grid on;
title("Convalution Sum");