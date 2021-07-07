% задание интервалов и количества точек интерполяции
a=1; 
b=9;
n=9;
eps = 0.001;
% выбираем n+2 точки квазиальтернанса
X = linspace(a,b,n+2);
% Алгоритм Ремеза
[Poly, sigmas] = Remez(X, eps);

f = figure('Color','w');
set(f, 'Position', [200, 100, 1000, 495]) 
% вывод графика
subplot(1,2,1)
hold on
fplot(@func,[a b])
% вывод графика полинома наилучшего приближения
title('Alternance');
x = a:0.001:b;
plot(x,polyval(Poly, x),'r')

% разметка
grid on
xlabel('x');
ylabel('y');