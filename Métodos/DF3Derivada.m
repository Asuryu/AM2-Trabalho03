function [x,y,dydx] = DF3Derivada(f,a,b,h,y)
%NDERIVACAODF3D Summary of this function goes here
%   Detailed explanation goes here

x = a:h:b;
n = length(x);

if nargin == 4
    y = f(x);
end

dydx = zeros(1,n);

dydx(1) = (y(3) - 2*y(2) + y(1)) / (h^2);

for i=2:n-1
    dydx(i) = (y(i+1) - 2*y(i) + y(i-1)) / h^2;
end

dydx(n) = (y(n) - 2*y(n-1) + y(n-2)) / (h^2);