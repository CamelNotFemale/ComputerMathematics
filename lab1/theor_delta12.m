function R = theor_delta12(X,x_interval)
%X - ������ ��������� �����
%interval - ������ ����� ��������� ��������� [a,b]

    % ������������ �������� 13-�� ����������� ������� �� ��������� [a,b]
    M = max(abs(dif12_func(x_interval)));
    % ���������� �������� �� ������ (����� ������������)
    omega = poly(X);
    % ���������� ������������� ����������� �� �������� ���������
    R = max(abs(polyval(M*omega/factorial(12), x_interval)));