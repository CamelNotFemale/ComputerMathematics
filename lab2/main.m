% ������� ���������� � ���������� ����� ������������
a=1; 
b=9;
n_dots=5;
% ������� ����� ������������
X=findChebyshevNodes(a,b,n_dots);
Y=func(X);
% ������� �����, � ������� ��������� ����� �������� ����������������� ��������
x=linspace(a,b,1000);
% ���������� �������� ����������������� ��������
y=lagrange(X,Y,x);
% ���������� ��������
figure('Color','w')
% ����� ������� func(x)
fplot(@(x)func(x),[a b],'r')
%��������� ������(� ��� �����������) � ������� ������� ���������
hold on
% ����� ������� ��������
plot(x,y,'b')
% ����� ����� ������������
plot(X,Y,'bo')
% ������������ ������������ �����������
Y = func(x);
delta_max(Y, y)
% ������������� ������������ ����������� ��� ��������� �� 5/12 �����
R=findChebyshevDefect(a,b,n_dots)