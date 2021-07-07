function [delta, i] = delta_max(Y1,Y2)
	% Y1 - значения первого массива
	% Y2 - значения второго массива
	[delta, i] = max(abs(Y1-Y2));