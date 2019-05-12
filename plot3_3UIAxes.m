%Das Simulinkmodell 'laengsdynamik' wird verwendet,
%um die Grafiken zu verzeugen. Diese werden in dieser Funktion geplottet.
function plot3_3UIAxes(axes1, axes2, axes3)
system_name = 'laengsdynamik';
dt = 1*10^(-3);
simout = sim(system_name, 'Solver', 'ode4', 'FixedStep', num2str(dt), 'StopTime', num2str(10));
a=simout.get('a');
v=simout.get('v');
s=simout.get('s');

plot(axes1,a.Time,a.Data);
title(axes1, 'Beschleunigung');
xlabel(axes1, 't in s');
ylabel(axes1, 'a in $\frac{m}{s^2}$', 'interpreter','latex');

plot(axes2,s.Time,s.Data);
title(axes2, 'Weg');
xlabel(axes2, 't in s');
ylabel(axes2, 's in m');

plot(axes3,v.Time,v.Data);
title(axes3, 'Geschwindigkeit');
xlabel(axes3, 't in s');
ylabel(axes3, 'v in $\frac{m}{s}$', 'interpreter','latex');
end