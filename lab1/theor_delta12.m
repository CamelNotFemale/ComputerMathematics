function R = theor_delta12(X,x_interval)
%X - массив координат узлов
%interval - массив точек разбиения интервала [a,b]

    % максимальное значение 13-ой производной функции на интервале [a,b]
    M = max(abs(dif12_func(x_interval)));
    % построение полинома по корням (узлам интерполяции)
    omega = poly(X);
    % вычисление теоретической погрешности на заданном интервале
    R = max(abs(polyval(M*omega/factorial(12), x_interval)));