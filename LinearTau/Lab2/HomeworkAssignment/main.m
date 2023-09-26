close all
clear

num = mod(6, 10) + 1;

% ........ CONSTS ............

a = 0;
b = 1;


% ....... END CONSTS .........

lambda_func = @(x) sqrt(1 + x^2) + exp(-2 * x);
lambda_dif = @(x) x/(x^2 + 1)^(1/2) - 2*exp(-2*x);


plot_graph(lambda_func, lambda_dif, [a,b]);

