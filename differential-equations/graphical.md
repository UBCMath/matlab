# Graphical Methods

## Slope Fields

## `slopefield`

The function `slopefield.m` plots the slope field and sample solutions of a first order differential equation. 

```none
function dirfield(f,t,y,y0)

[T,Y] = meshgrid(t,y);
dydt = f(T,Y);
theta = atan(dydt);
L = min(min(diff(t)),min(diff(y))) * 0.8;
dy = L * sin(theta);
dt = L * cos(theta);
quiver(t,y,dt,dy,0,'r'); hold on;
for n=1:length(y0)
    T = t(1):0.02:t(end);
    [T,Y] = ode45(f,T,y0(n));
    plot(T,Y,'b')
end
axis([t(1),t(end),y(1),y(end)]); hold off;

end
```

For example, consider the following script:

```none
clear; close; clc;
f = @(t,y) -t.*y;
t = 0:0.2:4; y = -2:0.2:2; y0 = -2:0.5:2;
dirfield(f,t,y,y0);
savefig('example.fig')
```

The script above accomplishes the following tasks:

* Clear the workspace, close all figures and clear the command window
* Define the right hand side of the equation $y' = -ty$ as a function $f(t,y) = -ty$
* Define vector `t` of $t$ values over the interval $0 \leq t \leq 4$ using grid step size $0.2$ 
* Define vector `y` of $y$ values over the interval $-2 \leq y \leq 2$ using grid step size $0.2$ 
* Define vector `y0` of initial values $y_0 = -2.0,-1.5,\dots,1.5,2.0$
* Plot the direction field of the equation $y' = -ty$ over the corresponding region
* Plot the solution for each initial value $y_0 = -2.0,-1.5,\dots,1.5,2.0$
* Save the figure as `example.fig`
