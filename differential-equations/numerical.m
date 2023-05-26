%%
clear; close; clc;
f = @(t,y) -y;
t0 = 0; tf = 2; h = 0.1;
t = t0:h:tf;
y0 = 1;
y = zeros(size(t));
y(1) = y0;
for n = 1:(length(t)-1)
    y(n+1) = y(n) + f(t(n),y(n))*h;
end
t_exact = linspace(t0,tf,200);
y_exact = exp(-t_exact);
plot(t,y,'r.-',t_exact,y_exact,'b')
legend("Euler's Method","Exact Solution"), ylim([0,1]), grid on

print_figure(gcf,'numerical1.png',5,7)

%%
clear; close; clc;
f = @(t,y) -y;
t0 = 0; tf = 2; h = 0.1; t = t0:h:tf; y0 = 1;
[T,Y] = odeEuler(f,t,y0);
plot(T,Y,'r.-'), ylim([0,1]), grid on

print_figure(gcf,'numerical2.png',5,7)

%%
clear; close; clc;
f = @(t,y) -y;
t0 = 0; tf = 1; h = 0.1; t = t0:h:tf; y0 = 1;
y = 0:h:1;
slopefield(f,t,y), hold on
[T,Y] = odeEuler(f,t,y0);
plot(T,Y,'r.-'), hold off

print_figure(gcf,'numerical3.png',5,7)

%%
clear; close; clc;
f = @(t,y) t - y.^2;
t0 = 0; tf = 4; h = 0.01; t = t0:h:tf;
[T,Y0] = odeEuler(f,t,0); plot(T,Y0,'b'), hold on
[T,Y1] = odeEuler(f,t,1); plot(T,Y1,'b')
[T,Y2] = odeEuler(f,t,2); plot(T,Y2,'b')
[T,Y3] = odeEuler(f,t,3); plot(T,Y3,'b'), hold off

print_figure(gcf,'numerical4.png',5,7)

%%
clear; close; clc;
f = @(t,y) sin(t) + cos(y);
t0 = 0; tf = 10; h = 0.01; t = t0:h:tf;
for y0=-5:0.5:10
    [T,Y] = odeEuler(f,t,y0);
    plot(T,Y,'b'), hold on
end
hold off

print_figure(gcf,'numerical5.png',5,7)