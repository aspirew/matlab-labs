function y = zad6(N)
rand = 7*randn(1, 100)+3;
subplot(211)
histogram(rand, 10)
subplot(212)
cdfplot(rand)