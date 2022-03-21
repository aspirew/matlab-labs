function y = zad10
Tbl = readtable('absolwenci.xls');

[h1, pVal1, W1] = swtest(Tbl.pedagogika, 0.05)
[h2, pVal2, W2] = swtest(Tbl.rolnictwo, 0.05)

subplot(211)
qqplot(Tbl.pedagogika)

subplot(212)
qqplot(Tbl.rolnictwo)

