function [resultado] = Harmonica(f)
%HARMONICA Summary of this function goes here
%   Detailed explanation goes here

syms f(x,y)

if(diff(f,x,2) + diff(f,y,2) == 0)
    resultado = 1;
else
    resultado = 0;
end

end

