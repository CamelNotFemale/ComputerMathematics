function res = findChebyshevDefect(a,b,n)
% a - левая граница интервала
% b - правая граница интервала
% n - количество точек разбиения
x_interval = linspace(a,b,1000);
if (n==5)
    M = max(abs(dif5_func(x_interval)));
elseif (n==12)
    M = max(abs(dif12_func(x_interval)));
end
res = (M / factorial(n))*( (b-a)^n / (2^(2*n-1)) );