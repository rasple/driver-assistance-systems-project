function plot4_6_1()
%Ch, Cv, lv, lh, m, g
    %ChStern = Ch * (lv+lh) / lv / m / g;
    %CvStern = Cv * (lv+lh) / lh / m / g;
    Cvs=9.5;
    Chs=20.5;
    g=9.81;
    EG=((1/Cvs)-(1/Chs))/g
    R=10;
    v=20;
    l=5;
    v_2=v*v;
    r=30:0.01:50 %DIN/ISO4138
    a=v_2./r;
    ack=l./r;
    oben=ack+EG;
    unten=ack-EG;
    plot(a, ack,'--', a, oben, a, unten);
end