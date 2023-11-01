clc
syms W_z(s) w A(s) B(s)
W_z(s) = (160 * s + 400) / (0.16 * s^4 + 4.04 * s^3 + 1601 * s^2 + 560 * s + 400);

s = 1i * w;



figure("Name",'ACH');
hold on;
fplot(angle(W_z(s)) * 180 / pi, [0,99.71], Color="Blue");
fplot(angle(W_z(s)) * 180 / pi - 360, [99.72,1000], Color="Blue");
grid on

