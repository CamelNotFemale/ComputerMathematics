% ������� ���������� � ���������� ����� ������������
a=1; 
b=9;
n=9;
eps = 0.001;
% �������� n+2 ����� ����������������
X = linspace(a,b,n+2);
% �������� ������
[Poly, sigmas] = Remez(X, eps);

f = figure('Color','w');
set(f, 'Position', [200, 100, 1000, 495]) 
% ����� �������
subplot(1,2,1)
hold on
fplot(@func,[a b])
% ����� ������� �������� ���������� �����������
title('Alternance');
x = a:0.001:b;
plot(x,polyval(Poly, x),'r')

% ��������
grid on
xlabel('x');
ylabel('y');