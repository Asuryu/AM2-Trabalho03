function [out_S] = RSimpson(f,a,b,n)
%RSimpson - Regra de Simpson
%   out_S = (h/3)*(f(a)+s+f(b));

%INPUT:
%   f - função para aproximar a derivada
%   [a,b] - intervalo de valores da variável independente x
%   n - número de subintervalos

%OUTPUT:
%   out_S - área aproximada do integral

%   17/06/2021  Tomás Silva  a2020143845@isec.pt
%   17/06/2021  Tomás Pinto  a2020144067@isec.pt
%   17/06/2021  Francisco Mendes  a2020143982@isec.pt


h = (b-a)/n; % Amplitude dos subintervalos
x = a; % X começa em A (primeiro ponto do intervalo)
s = 0; % Soma começa a zero

for i=1:n-1 % Executa o ciclo de 1 a n-1
    x = x + h; % Próximo ponto
    if(~mod(i,2)) % Se o número da iteração for par
        s = s + 2*f(x); % Soma é igual à soma vezes 2 vezes a o valor da função no ponto atual
    else % Se o número da iteração for ímpar
        s = s + 4*f(x); % Soma é igual à soma vezes 4 vezes a o valor da função no ponto atual
    end
end

out_S = (h/3)*(f(a)+s+f(b)); % Aplica a Regra de Simpson

end

