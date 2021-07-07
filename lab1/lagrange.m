function y0=lagrange(x,y,x0)
% ���������� ����������������� �������� � ����� ��������
% x - ������ ��������� �����
% y - ������ �������� ��������������� �������
% x0 - ������ �������� ���������, ��� ������� ���� ��������� �������� ��������
% y0 - ������ �������� �������� �������� � ������ x0

% ������ ����� ����� ������������ (N=n+1)
N=length(x);
% ������� ������� ������ �������� ����������������� ��������
y0=zeros(size(x0));
% � ����� ������� ����� �� �����
for k=1:N
    % ��������� ������������, �.�. ������� Psi_k
    t=ones(size(x0));
    for j=[1:k-1, k+1:N]
        t=t.*(x0-x(j))/(x(k)-x(j));
    end
    % ����������� �����
    y0 = y0 + y(k)*t;
end