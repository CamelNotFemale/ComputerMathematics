function [P, sigmaVals]=Remez(X, epsilon)
% ���������� �������� ���������� ����������� 
% X - ������������� ��������� ����� �����
% epsilon - �����������
% P - ������� �����������
% sigmaVals - �������� ���� �� ������ �� �����
    deltaStep = 0.01;
    i = 1;
    while i < 3 || abs(sigma - delta) <= epsilon
        [P, sigma] = Poly_quasialternance(X);
        [x_max,delta] = maxDelta(X(1), X(end), P, deltaStep);
        % ������ ������� ����, �������� ������
        if mod(i,10) == 1
            figure('Color','w');
            % ����� ����������������
            plot(X, func(X),'bo')
            hold on;
            % ������ ���������� ��������
            x = X(1):0.001:X(end);
            plot(x,polyval(P, x),'r')
            str=sprintf('Step %d', i);
            title(str);
        end
        X = shuffle(X, P, x_max);
        sigmaVals(i) = sigma;
        i = i + 1;
    end
    % ������ ����
    figure('Color','w');
    plot(1:1:i-1, sigmaVals, 'g')
    hold on;
    title('Sigma Vals');
end