%Plottet das Bild 3.8 wobei jeweils der erste und der dritte Quadrant
%einzeln geplottet werden
% Gg=Gewichtskraft des Gesamtfahrzeuges
% Gh=Hinterachsgewichtskraft
% l=Radstand
% hs=Schwerpunkth�he
function plot3_7UIAxes(axes1, Gg,Gh, l, hs)
%plot erster Quadrant
x=hs/l;
psi=Gh/Gg;
z=[(-(1-psi)/x):0.01:(psi/x)];
FBV= z.*(1-psi+z.*x);
FBH= z.*(psi-z.*x);
plot(axes1,FBV,FBH);
title(axes1,'Tangentialkraftverteilung')
str_x = '$$ \frac{ F_{ Bv } }{ G_{g} } $$';
xlabel(axes1, str_x,'Interpreter','latex')
str_y = '$$ \frac{ F_{ Bh } }{ G_{g} } $$';
ylabel(axes1, str_y,'Interpreter','latex')
end