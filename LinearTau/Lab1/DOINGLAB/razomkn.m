
W1 = parallel(tf([K_P]), tf([K_I], [1,0]));
W2 = feedback(tf([1], [T1, 1]), tf([1], [T2, 1]), -1);
W3 = tf([1],[A, B, 1]);

R = series(W1, W2);
R = series(R, W3);
R