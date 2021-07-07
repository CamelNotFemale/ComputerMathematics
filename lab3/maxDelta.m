function [xMax, yMax] = maxDelta(a, b, Poly, step)
% ���������� ������������� ����������
% a,b - �������� ������
% poly - ������� ������� ����������������
% step - ��� ������
% xMax, yMax - ���������� ����� ������������� ����������
    yMax = -1;
    for x=a:step:b
        delta = abs(func(x)-polyval(Poly, x));
        if delta > yMax
            xMax = x;
            yMax = delta;
        end
    end
end