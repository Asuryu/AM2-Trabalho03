function [x,y,dydx] = DF2Regressivas(f,a,b,h,y)
%DF2Regressivas - Fórmula das Diferenças Divididas Regressivas (2 pontos)
%   dydx(i) = (y(i) - y(i-1)) / h

%INPUT:
%   f - função para aproximar a derivada
%   [a,b] - intervalo de valores da variável independente x
%   h - valor do subintervalo
%   y - função para aproximar a derivada

%OUTPUT:
%   x - vetor dos valores que x pode tomar
%   y - vetor dos valores que y pode tomar
%   dydx - vetor dos valores da derivada num ponto (x,y)

%   17/06/2021  Tomás Silva  a2020143845@isec.pt
%   17/06/2021  Tomás Pinto  a2020144067@isec.pt
%   17/06/2021  Francisco Mendes  a2020143982@isec.pt


x = a:h:b; % Vetor com valores de A a B com step H
n = length(x); % Tamanho do vetor anterior

if nargin == 4
    y = f(x);
end

dydx = zeros(1,n); % Pre-alocação de memória para os valores calculados

dydx(1) = (y(2) - y(1)) / h; % Caso específico no início para o elemento
                             % que não vai ser corrido no ciclo em baixo

for i=2:n % Percorre elementos do vetor X de 2 a n
    dydx(i) = (y(i) - y(i-1)) / h; % Aplica a fórmula (Regressiva)
end
