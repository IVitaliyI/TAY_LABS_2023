num = mod(6, 10) + 1;



syms x
fun = sqrt(1 + x^2) + exp(-2 * x);
dif_fun = diff(fun)

lambda_func = @(x) fun;
lambda_dif = @(x, t) diff_fun

get

plot_graph(lambda_func)
gradient_spusk();

