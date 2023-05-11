%% vectorization.md

%%
clear; close; clc;
x = [-3 -2 -1 0 1 2 3];
y = [9 4 1 0 1 4 9];
plot(x,y)

print_figure(gcf,'vectorization1.png',5,7)

%%
clear; close; clc;
x = -3:0.01:3;
y = x.^2;
plot(x,y)

print_figure(gcf,'vectorization2.png',5,7)

%%
x = 0:0.2:1

%%
x = linspace(0,1,9)

%%
a = 0; b = 1; N = 5; h = (b - a)/(N - 1);
x1 = a:h:b
x2 = linspace(a,b,N)

%%
clear; close; clc;
x = [0 pi/4 pi/2 3*pi/4 pi];
y1 = [sin(0) sin(pi/4) sin(pi/2) sin(3*pi/4) sin(pi)]
y2 = sin(x)

%%
clear; close; clc;
x = linspace(0,pi,100);
y = sin(x);
plot(x,y)

print_figure(gcf,'vectorization3.png',5,7)

%%
x = [-3 -2 -1 0 1 2 3];
y1 = [(-3)^2 (-2)^2 (-1)^2 0^2 1^2 2^2 3^2]
y2 = x.^2

