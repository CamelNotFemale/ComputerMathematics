function R = theor_delta_5(X,x_interval)
%X - массив координат узлов
%interval - массив точек разбиения интервала [a,b]

    % максимальное значение производной на интервале [a,b]
    M = max(abs(dif5_func(x_interval)));
    % построение полинома по корням (узлам интерполяции)
    omega = poly(X);
    % вычисление теоретической погрешности на заданном интервале
    R = max(abs(polyval(M*omega/factorial(5), x_interval)))