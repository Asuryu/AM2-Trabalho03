function [x,y,dydx] = DF3Regressivas(f,a,b,h,y)
%NDERIVACAODFP Summary of this function goes here
%   Detailed explanation goes here

x = a:h:b;
n = length(x);

if nargin == 4
    y = f(x);
end

dydx = zeros(1,n);

dydx(1) = (-3*y(1) + 4*y(2) - y(3)) / (2*h);
dydx(2) = (-3*y(2) + 4*y(3) - y(4)) / (2*h);

for i=3:n
    dydx(i) = (y(i-2) - 4 * y(i-1) + 3 * y(i)) / (2*h);
end