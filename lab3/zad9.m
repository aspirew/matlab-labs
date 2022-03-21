function y = zad9
Tbl = readtable('kondensatory.csv');

[h, pVal, W] = swtest(Tbl.pojemnosc, 0.05)

qqplot(Tbl.pojemnosc)
