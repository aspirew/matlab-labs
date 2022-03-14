function y = zad1
mean = 28
rand = 5*randn(1, 100)+31.5;
[h,p,ci,stats] = ttest(rand, mean)
% The returned value h = 1 indicates that ttest rejects the null hypothesis at the 5% significance level.