function y = zad4
n = 25
rand = sqrt(1.5)*randn(1, n)+5;
[h,p,ci,stats] = vartest(rand, 1.6, "Tail", "right")
% h = 0
