function [P, sigma] = Poly_quasialternance(X)
% X - точки квазиальтернанса
% P = [p_0, p_1, ..., p_n] - коэффициенты выходного полинома
% sigma - значение отклонения полинома от функции в точках квазиальтернанса
    for i = 1:length(X)
        valueMatrix(i) = func(X(i));
        koefsMatrix(i, 1) = 1;
        for j = 2:length(X)
            koefsMatrix(i, j) = X(i)^(j-1);
        end
        koefsMatrix(i, length(X)) = (-1)^(i+1);
    end
    rslt = inv(koefsMatrix)*valueMatrix';
    P = flip(rslt(1:length(rslt)-1))'; %переворачиваем коэффциенты
    sigma = rslt(length(rslt));
end