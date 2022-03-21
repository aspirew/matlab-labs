function y = zad8
Tbl = readtable('zarowki.csv');

[h, pVal, W] = swtest(Tbl.czas, 0.1)

qqplot(Tbl.czas)
