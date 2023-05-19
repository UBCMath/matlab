%%
clear; close; clc;
f = @(t,y) -t.*y;
t = 0:0.2:4;
y = -2:0.2:2;
slopefield(f,t,y);

print_figure(gcf,'graphical1.png',5,7)

%%
clear; close; clc;
f = @(t,y) y.*(1 - y);
t = 0:0.2:4; y = -0.5:0.25:2.5;
slopefield(f,t,y), hold on

t = 0:0.1:4;
C1 = 0.1; y1 = C1*exp(t)./(1 + C1*(exp(t) - 1)); plot(t,y1,'r')
C2 = 0.5; y2 = C2*exp(t)./(1 + C2*(exp(t) - 1)); plot(t,y2,'r')
C3 = 2.0; y3 = C3*exp(t)./(1 + C3*(exp(t) - 1)); plot(t,y3,'r')
hold off

print_figure(gcf,'graphical2.png',5,7)

%%
clear; close; clc;
f = @(t,y) sin(pi*t) - cos(pi*y);
t = 0:0.2:5; y = -2:0.2:2;
slopefield(f,t,y)

print_figure(gcf,'graphical3.png',5,7)