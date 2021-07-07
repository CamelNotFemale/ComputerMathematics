function [P, sigmaVals]=Remez(X, epsilon)
% нахождение полинома наилучшего приближения 
% X - первоначально выбранный набор точек
% epsilon - погрешность
% P - полином альтернанса
% sigmaVals - значение сигм на каждом из шагов
    deltaStep = 0.01;
    i = 1;
    while i < 3 || abs(sigma - delta) <= epsilon
        [P, sigma] = Poly_quasialternance(X);
        [x_max,delta] = maxDelta(X(1), X(end), P, deltaStep);
        % график каждого шага, кратного десяти
        if mod(i,10) == 1
            figure('Color','w');
            % точки квазиальтернанса
            plot(X, func(X),'bo')
            hold on;
            % график найденного полинома
            x = X(1):0.001:X(end);
            plot(x,polyval(P, x),'r')
            str=sprintf('Step %d', i);
            title(str);
        end
        X = shuffle(X, P, x_max);
        sigmaVals(i) = sigma;
        i = i + 1;
    end
    % график сигм
    figure('Color','w');
    plot(1:1:i-1, sigmaVals, 'g')
    hold on;
    title('Sigma Vals');
end