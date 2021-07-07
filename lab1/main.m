% ������� ����� ������������
X=linspace(1,9,5);
Y=func(X);
% ������� �����, � ������� ��������� ����� �������� ����������������� ��������
x=linspace(1,9,1000);
% ���������� �������� ����������������� ��������
y=lagrange(X,Y,x);
% ���������� ��������
figure('Color','w')
% ����� ������� func(x)
fplot(@(x)func(x),[1 9],'r')
%��������� ������(� ��� �����������) � ������� ������� ���������
hold on
% ����� ������� ��������
plot(x,y,'b')
% ����� ����� ������������
plot(X,Y,'bo')
% ������������ ������������ �����������
Y = func(x);
delta_max(Y, y)
% ������������� ������������ ����������� ��� ��������� �� 5 �����
R=theor_delta5(X,x);
% ������������� ������������ ����������� ��� ��������� �� 12 �����
%R=theor_delta12(X,x)

% hold off
% Y = func(X);
% y = newton(X,Y,x);
% % ����� ������� ��������
% plot(x,y,'b')
% hold on
% % ����� ������� sin(x)
% fplot(@(x)func(x),[1 9],'r')
% % ����� ����� ������������
% plot(X,Y,'bo')