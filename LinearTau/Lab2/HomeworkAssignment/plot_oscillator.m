function [] = plot_oscillator(t, z)

    figure(Name='X(t)')
    plot(t, z(:,1), DisplayName='x(t)', Color='red')
    xlabel('t')
    ylabel('X')
    title('X(t)')
    grid on
    legend

    figure(Name='V(t)')
    xlabel('t')
    ylabel('V')
    plot(t,z(:,2), '--r', DisplayName='v(t)' )
    title('V(t)')
    grid on
    legend


    figure(Name='X(t) and V(t) plot')
    subplot(1,2,1)
    plot(t, z(:,1), DisplayName='x(t)')
    xlabel('t')
    ylabel('X')
    title('X(t)')
    grid on
    legend
    subplot(1,2,2)
    plot(t,z(:,2), DisplayName='v(t)')
    xlabel('t')
    ylabel('V')
    title('V(t)')
    grid on
    legend

    figure(Name='X(t) and V(t) plot')
    subplot(2,1,1)
    plot(t, z(:,1), DisplayName='x(t)')
    xlabel('t')
    ylabel('X')
    title('X(t)')
    grid on
    legend
    subplot(2,1,2)
    plot(t,z(:,2), DisplayName='v(t)')
    xlabel('t')
    ylabel('V')
    title('V(t)')
    grid on
    legend

