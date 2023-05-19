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
x = 0:0.05:1;
length(x)
x(1)
x(2)
x(11)
x(20)
x(21)

%%
clear; close; clc;
x = [0 pi/4 pi/2 3*pi/4 pi];
y1 = [sin(0) sin(pi/4) sin(pi/2) sin(3*pi/4) sin(pi)]
y2 = sin(x)

%%
clear; close; clc;
x = [0 pi/4 pi/2 3*pi/4 pi];
y = sin(x);
plot(x,y)

print_figure(gcf,'vectorization3.png',5,7)


%%
clear; close; clc;
x = linspace(0,pi,100);
y = sin(x);
plot(x,y)

print_figure(gcf,'vectorization4.png',5,7)

%%
x = [-3 -2 -1 0 1 2 3];
y1 = [(-3)^2 (-2)^2 (-1)^2 0^2 1^2 2^2 3^2]
y2 = x.^2

%%
clear; close; clc;
x = linspace(-2,2,100);
y = 1 - x.^2;
plot(x,y)

print_figure(gcf,'vectorization5.png',5,7)

%%
format short
x = 0:0.25:1;
y = x.*exp(-x)
y = [0.*exp(-0) 0.25.*exp(-0.25) 0.5.*exp(-0.5) 0.75.*exp(-0.75) exp(-1)]

%%
clear; close; clc;
x = 0:0.1:10;
y = x.*exp(-x);
plot(x,y)

print_figure(gcf,'vectorization6.png',5,7)

%%
clear; close; clc;
x = linspace(-6,6,200);
y = 1./(1 + x.^2);
plot(x,y)

print_figure(gcf,'vectorization7.png',5,7)

%%
clear; close; clc;
x = linspace(0,5,500);
y = cos(2*pi*x) + 2*sin(3*pi*x);
plot(x,y)

print_figure(gcf,'vectorization8.png',5,7)

%% EXERCISES

%%
x = -1:0.1:1;
y = 1 + x + x.^2;
y(1),y(11),y(21)

%%
format long
x = linspace(0,1,101);
y = x.*exp(-x.^2);
y(1),y(51),y(101)
0, 0.5*exp(-0.5^2), exp(-1)



