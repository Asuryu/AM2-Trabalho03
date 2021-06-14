function [T] = RTrapezios(f,a,b,n)
%RTRAPEZIOS Summary of this function goes here
%   Detailed explanation goes here

h = (b-a)/n;
x = a;
s = 0;

for i=1:n-1
    x = x + h;
    s = s + f(x);
end

T = (h/2)*(f(a)+2*s+f(b));

end

