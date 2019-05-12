%Das Simulinkmodell 'laengsdynamik' wird verwendet,
%um die Grafiken zu verzeugen. Diese werden in dieser Funktion geplottet.
function plot3_3()
system_name = 'laengsdynamik';
dt = 1*10^(-3);
simout = sim(system_name, 'Solver', 'ode4', 'FixedStep', num2str(dt), 'StopTime', num2str(10));
a=simout.get('a');
v=simout.get('v');
s=simout.get('s');
subplot(3,1,1);
plot(a.Time,a.Data);
title('Beschleunigung');
xlabel('t');
ylabel('a');
subplot(3,1,2)
plot(s.Time,s.Data);
title('Weg');
xlabel('t');
ylabel('s');
subplot(3,1,3)
plot(v.Time,v.Data);
title('Geschwindigkeit');
xlabel('t');
ylabel('v');
end