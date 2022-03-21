function y = check
data = [148 154 158 160 161 162 166 170 182 195 236]

[h, pVal, W] = swtest(data, 0.05)

qqplot(data)
