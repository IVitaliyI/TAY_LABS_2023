
function res = dzdt(t, z)
    m = 1; % масса дощечки, кг
    alpha = 0.1; % коэф-т вязкого трения, кг/с
    k = 10; % жесткость пружины, Н/м
    koef_syx_tren = 0.1;
    g = 9.8;
    %fprintf("t = %f\n", t);
   % b = -k / m * z(1,1) - alpha / m * z(2,1); % - koef_syx_tren * g * sign(z(2,1));
    disp(z)
    res = [z(2); -k / m * z(1) - alpha / m * z(2) - koef_syx_tren * g * sign(z(2))];
    
   
end