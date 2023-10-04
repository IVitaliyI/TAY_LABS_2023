clear all
path()

variant  = 4;
i = variant;
K = mod(i^2+i+1, 18) + 1; 

%   ///   ДПР-62Н1-01   \\\
P_nom = 12.6; % Вт
N_nom = 9000; % об/мин
U_a = 27; % В
I_a = 1; % A
R_a = 2.1; % Om
J_a = 3.6 * 10^(-6); % кг*м^2
m = 0.41; % kg

k_m = P_nom / (N_nom * I_a);
w_nom = 2 * pi * N_nom / 60;
k_w = (U_a - R_a * I_a)/ w_nom;

L_a = 0.1*((J_a * (R_a)^2)/(k_m * k_w));
%   ///   ДПР-62Н1-01   \\\

