%Plottet das Bild 4_6
function plot4_6_1(Ch, Cv, lv, lh, m, g)
    %Ch, Cv, lv, lh, m, g
    Chs = (Ch * (lv+lh)) / (lv* m *g);
    Cvs = (Cv * (lv+lh))/ (lh *m * g);
    %konstante geschwinidkeit
    %Cvs=9.5;
    %Chs=20.5;
    %g=9.81;
    EG=((1/Cvs)-(1/Chs))/g;
    %konstante geschwinigkeit
    v=20;
    l=5;
    v_2=v*v;
    r=1000:0.01:4000; %DIN/ISO4138
    a=v_2./r;
    ack=l./r;
    oben=ack+(EG.*a);
    unten=ack-(EG.*a);
    subplot(2,1,1);
    plot(a, ack,'--', a, oben, a, unten);
    str_x = '$$ \frac{ \delta_{H} }{ i_{s} } $$';
    xlabel(str_x,'Interpreter','latex')
    str_y = '$$ a_{y} $$';
    ylabel(str_y,'Interpreter','latex')
    %konstante Radius
    v=0:0.01:7;
    R=100;
    a= (v.^2)/R;
    ack = (l/R) * ones(1, length(v));
    oben=ack+(EG.*a);
    unten=ack-(EG.*a);
    subplot(2,1,2);
    plot(a, ack, a, oben, a, unten);
    xlabel(str_x,'Interpreter','latex')
    ylabel(str_y,'Interpreter','latex')
end