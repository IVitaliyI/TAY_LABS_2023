i = 4
K_P = 5 * abs(i ^ 2 - i - 20)
K_I = 0.005 * abs(i - 10)
T1 = i
T2 = 0.01 * i
T3 = i ^ (-2)
zeta = 0.5 + (i - 10) / 40

A = T3 ^ 2;
B = 2 * T3 * zeta;