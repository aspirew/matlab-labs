function y = zad7
Tbl = readtable('pacjenci.csv');

[h, pVal, W] = swtest(Tbl.cukier, 0.05)

qqplot(Tbl.cukier)
