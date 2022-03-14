function y = zad2
mean = 3
data = [1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 6, 6, 6, 7, 7]
[h,p,ci,stats] = ttest(data, mean)
% The returned value h = 1 indicates that ttest rejects the null hypothesis at the 5% significance level.