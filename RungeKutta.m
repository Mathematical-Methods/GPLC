# Runge-Kutta practice.

# let an initial value problem be as specified:
#
#   dy/dt = f(t,y), y(t_0) = y_0
#
#
#

# example problem:  y' = sin(t) * sin(t)
clearvars;

# initial condition
y = [5];

# Time step in seconds.
h = 0.5;
t_n = 0

iteration = 1;
while (iteration < 20)

  k1 = f(t_n, y(1, iteration));

  k2 = f(t_n + (h/2), y(1, iteration) + ((h/2) * k1));

  k3 = f(t_n + (h/2), y(1, iteration) + ((h/2) * k2));

  k4 = f(t_n + h, y(1, iteration) + (h * k3));

  y(1, iteration + 1) = y(1, iteration) + (h / 6) * (k1 + 2 * k2 + 2 * k3 + k4);

  t_n = t_n + h;

  iteration = iteration + 1;

endwhile

plot (y);
xlabel ("x");
ylabel ("sin^2(x) * y");
title ("Simple 2-D Plot");



