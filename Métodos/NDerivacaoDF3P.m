function [x,y,dydx] = NDerivacaoDF3P(f,a,b,h,y)
%NDERIVACAODFP Summary of this function goes here
%   Detailed explanation goes here

x = a:h:b;
n = length(x);

if nargin == 4
    y = f(x);
end

dydx = zeros(1,n);

for i=1:n-2
    dydx(i) = (-3 * y(i) + 4 * y(i+1) - y(i+2)) / 2 * h;
end
