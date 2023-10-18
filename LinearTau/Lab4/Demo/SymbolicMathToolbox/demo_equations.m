clc
clear all
close all

syms x y
solve(x^2 + 5*x + 4 == 0) % решение уравнения

solve(2*x*y + x^2 + y == 0, y) % решение уравнения для определенной переменной

[x, y] = solve(x^2 + y == 5, 2*y == x) % решение системы уравнений

% рассмотрим построение графика функции
syms x
assume(x, "real"); % х может принимать только действительные значения
f = 4 * x^2 + 9 * x + 3
fplot(f)
grid on

syms x(t)
equ = dsolve(diff(x, t, 2) == - 2 * x) % решение дифференциального уравнения
latex(equ)