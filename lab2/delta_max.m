function [delta, i] = delta_max(Y1,Y2)
	% Y1 - �������� ������� �������
	% Y2 - �������� ������� �������
	[delta, i] = max(abs(Y1-Y2));