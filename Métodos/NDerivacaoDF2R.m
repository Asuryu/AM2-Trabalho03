function [x,y,dydx] = NDerivacaoDF2R(f,a,b,h,y)
%NDERIVACAODFP Summary of this function goes here
%   Detailed explanation goes here

x = a:h:b;
n = length(x);

if nargin == 4
    y = f(x);
end

dydx = zeros(1,n);

dydx(1) = (y(2) - y(1)) / h;

for i=2:n
    dydx(i) = (y(i) - y(i-1)) / h;
end