function y = zad4
Tbl = readtable('pacjenci.csv');
males = groupfilter(Tbl,'plec',@(x) all(x == "M"),'plec')
females = groupfilter(Tbl,'plec',@(x) all(x == "K"),'plec')

hold on

cdfplot(males.wzrost)
cdfplot(females.wzrost)

hold off

[h1, p1] = kstest2(males.wzrost, females.wzrost)
[h2, p2] = kstest(males.wzrost)