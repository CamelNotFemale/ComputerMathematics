function R = theor_delta_5(X,x_interval)
%X - ������ ��������� �����
%interval - ������ ����� ��������� ��������� [a,b]

    % ������������ �������� ����������� �� ��������� [a,b]
    M = max(abs(dif5_func(x_interval)));
    % ���������� �������� �� ������ (����� ������������)
    omega = poly(X);
    % ���������� ������������� ����������� �� �������� ���������
    R = max(abs(polyval(M*omega/factorial(5), x_interval)))