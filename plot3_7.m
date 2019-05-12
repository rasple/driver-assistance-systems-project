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
z=[(-(1-psi)/x):0.01:(psi/x)];
FBV= z.*(1-psi+z.*x);
FBH= z.*(psi-z.*x);
plot(FBV,FBH);
str_y = '$$ \frac{ F_{ Bv } }{ G_{g} } $$';
ylabel(str_y,'Interpreter','latex')
str_x = '$$ \frac{ F_{ Bh } }{ G_{g} } $$';
xlabel(str_x,'Interpreter','latex')
end