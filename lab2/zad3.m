function y = zad3
m = 49
n = 18
rand = 14*randn(1, n)+38;

xbar = mean(rand);
s = std(rand);
t = (xbar-m)/(s/sqrt(n))

tscore = 1 - tcdf(t, n-1)

[h,p,ci,stats] = ttest(rand, m, 0.01, "right")
% The returned value h = 1 indicates that ttest rejects the null hypothesis at the 5% significance level.

