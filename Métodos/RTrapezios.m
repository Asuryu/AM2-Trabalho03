function [T] = RTrapezios(f,a,b,n)
%RTrapézios - Regra dos Trapézios
%   T = (h/2)*(f(a)+2*s+f(b))

%INPUT:
%   f - função para aproximar a derivada
%   [a,b] - intervalo de valores da variável independente x
%   n - número de subintervalos

%OUTPUT:
%   T - área aproximada do integral

%   17/06/2021  Tomás Silva  a2020143845@isec.pt
%   17/06/2021  Tomás Pinto  a2020144067@isec.pt
%   17/06/2021  Francisco Mendes  a2020143982@isec.pt


h = (b-a)/n; % Amplitude dos subintervalos
x = a; % X começa em A (primeiro ponto do intervalo)
s = 0; % Soma começa a zero

for i=1:n-1 % Executa o ciclo de 1 a n-1
    x = x + h; % Próximo ponto
    s = s + f(x); % Soma é igual à soma mais valor da função no ponto atual
end

T = (h/2)*(f(a)+2*s+f(b)); % Aplica a Regra dos Trapézios

end

