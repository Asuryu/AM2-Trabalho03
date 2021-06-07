function [x,y,dydx] = NDerivacaoDF2P(f,a,b,h,y)
%NDERIVACAODFP Summary of this function goes here
%   Detailed explanation goes here

x = a:h:b;
n = length(x);

if nargin == 4
    y = f(x);
end

dydx = zeros(1,n);

for i=2:n-1
    dydx(i) = (y(i+1) - y(i)) / h;
end