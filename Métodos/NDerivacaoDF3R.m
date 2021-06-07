function [x,y,dydx] = NDerivacaoDF3R(f,a,b,h,y)
%NDERIVACAODFP Summary of this function goes here
%   Detailed explanation goes here

x = a:h:b;
n = length(x);

if nargin == 4
    y = f(x);
end

dydx = zeros(1,n);

for i=3:n
    dydx(i) = (y(i-2) - 4 * y(i-1) + 3 * y(i)) / 2 * h;
end