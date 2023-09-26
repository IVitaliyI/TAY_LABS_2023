close all
clear all

m = 1; % масса дощечки, кг
alpha = 0.1; % коэф-т вязкого трения, кг/с
k = 10; % жесткость пружины, Н/м
v_0 = 10; % начальная скорость,  м/с
x_0 = 1; % начальная координата, м
t_simulation = 20; % время симуляции, с
koef_syx_tren = 0.5;
g = 9.8;
count = 0;

sim_oscillator(m, alpha, k, x_0, v_0, t_simulation); % основная функция


function [] = sim_oscillator(m, alpha, k, x_0, v_0, t_simulation)

%dzdt = @(t, z) [z(2,1); -k / m * z(1,1) - alpha / m * z(2,1)]; % функция, которую необходимо проинтегрировать (лямбда-выражение)
z0 = [x_0, v_0]; % задание начального состояния
t0 = 0; % задание начального времени
zero_speed = @(t,z) event_zero_speed(t,z);
opt = odeset('Events',zero_speed)


[t, z] = ode45(@dzdt,[t0, t0 + t_simulation],z0, opt); 
% запуск вычислений 
% z - вектор-столбец строк состояния в зависимости от времени, где в первом столбце содержатся
% координаты бруска, во втором - скорости бруска
% для получения вектора координат можно использовать следующий код: z(:,1),
% скоростей - z(:,2)
% t - время
if t(end) < 20    
    z = [z; z(end,1),z(end,2); z(end,1),z(end,2)];
    t = [t; t(end); 20];
end
plot_oscillator(t, z); % функция, которую надо реализовать
end

function [value, isterminal, direction] = event_zero_speed(t, z) 
    value = 1;
    global count;
    if count > 10
        value = 0;
    else
        if z(2) < 1e-4
            count = count + 1;
        else
            count = 0;
        end
    end
    isterminal = 1;
    direction = 0;
end
% x y V_x V_y
