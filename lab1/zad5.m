function y = zad5(N)
filename = 'glass.data';
data = load(filename)
x = data(:,2)
subplot(211)
hist(x, N)