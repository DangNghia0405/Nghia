clc; clear; close all;
%% p4(t)
t0 = 0;L = 4;
t1 = -10:0.01:t0-0.01;  p1 = zeros(1,length(t1))
t2 = t0:0.01:t0+L-0.01;      p2 = ones(1,length(t2))
t3 = t0+L:0.01:10;;     p3 = zeros(1,length(t3))
t = [t1 t2 t3];p = [p1 p2 p3];
%% d4(t-1)
t0 = 1;L = 4
t1 = -10:0.01:t0-L/2-0.01;
t2 = t0-L/2:0.01:t0-0.01;
t3 = t0:0.01:t0+L/2-0.01;
t4 = t0+L/2:0.01:10;
d1 = zeros(1,length(t1));
d2 = linspace(0,1,length(t2));
d3 = linspace(1,0,length(t3));
d4 = zeros(1,length(t4));
t =  [t1,t2,t3,t4]; d = [d1,d2,d3,d4];

x=p+d
subplot(312)
plot(t,x,'r','linewidth' ,3)
xlabel('t');ylabel('x(t)');
axis([-11 11 -0.1 2])
grid on
