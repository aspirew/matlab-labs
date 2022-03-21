function y = zadLive
n1 = [1 9 9 8 0 1 0 3]
n2 = [9 8 0 1 0 3 7 2 9 4 1]

[h,p,ci,stats] = vartest2(n1, n2)

% h = 0
% nie mamy podstaw aby odrzucić hipotezę zerową mówiącą o tym, że dane
% pochodzą z rozkładu o tej samej wariancj
