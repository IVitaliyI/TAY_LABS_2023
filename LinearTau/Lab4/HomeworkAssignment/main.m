clear all
clc

k_1 = 40;
k_2 = 10;
T = 4;
T_1 = 0.04;
tau = 0.4;

W1 = tf([tau,1],[T,1]);
W2 = tf([k_1],[T_1,1,0]);
W3 = tf([k_2],[1,0]);
W4 = tf([10],[1]);

W_mestn_feedback = feedback(W2, W4, -1);
W_p = series(W1, W_mestn_feedback);
W_p = series(W_p, W3)
W_z = feedback(W_p, tf([1],[1]), -1)

k_d = 1
k_p = 1
k_i = 1


