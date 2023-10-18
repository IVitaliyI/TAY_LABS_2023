
function res = dzdt(t, z)
    m = 1; % масса дощечки, кг
    alpha = 0.1; % коэф-т вязкого трения, кг/с
    k = 10; % жесткость пружины, Н/м
    koef_syx_tren = 0.3;
    g = 9.8;
    %fprintf("t = %f\n", t);
   % b = -k / m * z(1,1) - alpha / m * z(2,1); % - koef_syx_tren * g * sign(z(2,1));
    %disp(z)
    
    if abs(z(2)) > 1e-7
        res = [z(2); -k / m * z(1) - alpha / m * z(2) - koef_syx_tren * g * sign(z(2))];
    else 
        res = [z(2); 0];
    end 

    % на автомат для 3 - ей лабы. Доработать двигатель 
    % Вход сигнал U, w - скорость, M
    % M - M_сопр