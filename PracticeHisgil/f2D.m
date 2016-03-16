function f2D()
    xmin=0;
    xmax=2*pi;
    step=pi/30;

    x=xmin:step:xmax;

    y1=sin(x);
    y2=cos(x);
    y3=x.^2;

    ymin=min([min(y1),min(y2), min(y3)])
    ymax=max([max(y1),max(y2), max(y3/2)])

    plot(x,y1,'r', x, y2,'g', x, y3,'b');
    legend('sin(x)','cos(x)','x^2',0);

    grid on;
    axis ( [xmin xmax ymin ymax])
    set(gca, 'FontName', 'Console');
    xlabel('X', 'Fontsize', 15);
    ylabel('Y', 'Fontsize', 15);
    title('Functions', 'Fontsize', 15);
end