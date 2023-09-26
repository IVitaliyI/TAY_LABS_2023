function [] = plot_graph(func, dif_func, otr)
   

    % ........ CONSTS ............

    a = 0.3  % KOEF
    EPS = 0.00005;

    % ....... END CONSTS .........


    x = [];
    y = [];
    disp(otr(1));
    disp(otr(2));
    disp(func);
    
    for i = otr(1):0.05:otr(2)
        x = [x, i];
    end

    for i = x
        y = [y, func(i)];
    end
   
    figure(Name='Gradient Function');
    plot(x, y);
    
    x_now = 0.1
    h = -a * dif_func(x_now);
    count = 0;
    x_next = x_now + h;
    while count < 500 && abs(x_now - x_next) > EPS
        line([x_now, x_next], [func(x_now) , func(x_next)], Color='Green')
        x_now = x_next;
        count = count + 1;
        h = -a * dif_func(x_now);
        x_next = x_now + h;
    end
    disp([x_now, func(x_now)])







