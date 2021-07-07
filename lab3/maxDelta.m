function [xMax, yMax] = maxDelta(a, b, Poly, step)
% нахождение максимального отклонения
% a,b - интервал поиска
% poly - текущий полином квазиальтернанса
% step - шаг поиска
% xMax, yMax - координаты точки максимального отклонения
    yMax = -1;
    for x=a:step:b
        delta = abs(func(x)-polyval(Poly, x));
        if delta > yMax
            xMax = x;
            yMax = delta;
        end
    end
end