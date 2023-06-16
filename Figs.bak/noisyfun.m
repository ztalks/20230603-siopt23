function y = noisyfun(x)

y = x^2+2;

y = y + 0.2*y*randn;
