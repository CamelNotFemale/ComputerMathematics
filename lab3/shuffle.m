function X_new = shuffle(X,P,x_max)
% замена одной из точек квазиальтернанса на точку с максимальным отклонением
% X - текущий квазиальтернанс
% P - коэффициенты полинома текущего квазиальтернанса
% x_max - максимум модуля отклонения
% X_new - новый квазиальтернанс
    P=flip(P);
    exchangeInd = 1;
    y_max = func(x_max) - polyval(P, x_max);
    while exchangeInd < length(X) + 1 && X(exchangeInd) < x_max
        exchangeInd = exchangeInd + 1;
    end
    if exchangeInd == 1
        if sign(func(X(1))-polyval(P, X(1))) == sign(y_max)
            %step 6 a
            X(1) = x_max;
        else
            %step 6 b
            X = [x_max X(1:end-1)]
        end
    else
        if exchangeInd > length(X)
            if sign(func(X(end))) == sign(y_max)
                %step 7 a
                X(end) = x_max;
            else
                %step 7 b
                X = [X(2:end) x_max];
            end
        else
            %step 5
            if sign(func(X(exchangeInd))-polyval(P, X(exchangeInd))) == sign(y_max)
                X(exchangeInd) = x_max;
            else
                X(exchangeInd - 1) = x_max;
            end
        end
    end
    X_new = X;