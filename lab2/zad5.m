function y = zad5
n1 = 20
n2 = 22

rand1 = 5.5*randn(1, n1)+27.7;
rand2 = 6.3*randn(1, n2)+32.1;

[h,p,ci,stats] = vartest2(rand1, rand2)

% Hipoteza zerowa - wartości ze zbiorów rand1 i rand2 pochodzą z rozkładów
% o tej samej wariancji

% Wynik h = 0 świadczy o tym, że nie mamy podstaw by odrzucić hipotezę
% zerową. Zatem nie mam podstaw by stwierdzić że wiek osób nabywjących nowe
% produkty ma większą wariancję niż wiek osób nabywających dotychczasowe
% produkty.
