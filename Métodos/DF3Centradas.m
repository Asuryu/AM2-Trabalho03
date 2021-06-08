function [x,y,dydx] = DF3Centradas(f,a,b,h,y)
%NDERIVACAODF3C Summary of this function goes here
%   Detailed explanation goes here

x = a:h:b;
n = length(x);

if nargin == 4
    y = f(x);
end

dydx = zeros(1,n);

dydx(1) = (y(2) - y(1)) / h;

for i=2:n-1
    dydx(i) = (y(i+1) - y(i-1)) / (2*h);
end

dydx(n) = (y(n) - y(n-1)) / h;
