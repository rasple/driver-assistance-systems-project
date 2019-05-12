%Plottet das Bild 3.8 wobei jeweils der erste und der dritte Quadrant
%einzeln geplottet werden
% Gg=Gewichtskraft des Gesamtfahrzeuges
% Gh=Hinterachsgewichtskraft
% l=Radstand
% hs=Schwerpunkth�he
function plot3_7UIAxes(axes1, axes2, Gg,Gh, l, hs)
%plot erster Quadrant
x=hs/l;
psi=Gh/Gg;
z=[0:0.01:(psi/x)];
f1= z.* (psi-z.*x);
plot(axes1,f1);
title(axes1,'Erster Quadrant')
str_x = '$$ \frac{ F_{ Bv } }{ G_{g} } $$';
xlabel(axes1, str_x,'Interpreter','latex')
str_y = '$$ \frac{ F_{ Bh } }{ G_{g} } $$';
ylabel(axes1, str_y,'Interpreter','latex')
%plot dritter Quadrant

z=[(-(1-psi)/x):0.01:0]
f3= z.*(1-psi+z.*x);
plot(axes2, z,f3);
title(axes2, 'Dritter Quadrant');
str_y = '$$ \frac{ F_{ Bv } }{ G_{g} } $$';
ylabel(axes2, str_y,'Interpreter','latex')
str_x = '$$ \frac{ F_{ Bh } }{ G_{g} } $$';
xlabel(axes2, str_x,'Interpreter','latex')
end