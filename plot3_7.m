%Plottet das Bild 3.8 wobei jeweils der erste und der dritte Quadrant
%einzeln geplottet werden
% Gg=Gewichtskraft des Gesamtfahrzeuges
% Gh=Hinterachsgewichtskraft
% l=Radstand
% hs=Schwerpunkthöhe
function plot3_7(Gg,Gh, l, hs)
%plot erster Quadrant
x=hs/l;
psi=Gh/Gg;
z=[0:0.01:(psi/x)];
f1= z.* (psi-z.*x);
subplot(2,1,1);
plot(z,f1);
title('Erster Quadrant')
str_x = '$$ \frac{ F_{ Bv } }{ G_{g} } $$';
xlabel(str_x,'Interpreter','latex')
str_y = '$$ \frac{ F_{ Bh } }{ G_{g} } $$';
ylabel(str_y,'Interpreter','latex')
%plot dritter Quadrant
subplot(2,1,2)
z=[(-(1-psi)/x):0.01:0]
f3= z.*(1-psi+z.*x);
plot(z,f3);
title('Dritter Quadrant');
str_y = '$$ \frac{ F_{ Bv } }{ G_{g} } $$';
ylabel(str_y,'Interpreter','latex')
str_x = '$$ \frac{ F_{ Bh } }{ G_{g} } $$';
xlabel(str_x,'Interpreter','latex')
end