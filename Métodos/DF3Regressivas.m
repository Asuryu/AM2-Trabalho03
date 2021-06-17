function [x,y,dydx] = DF3Regressivas(f,a,b,h,y)
%DF3Regressivas - Fórmula das Diferenças Divididas Regressivas (3 pontos)
%   dydx(i) = (y(i-2) - 4 * y(i-1) + 3 * y(i)) / (2*h);

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

% Casos específicos no início para os elementos
% que não irão ser corridos no ciclo em baixo
dydx(1) = (-3*y(1) + 4*y(2) - y(3)) / (2*h);
dydx(2) = (-3*y(2) + 4*y(3) - y(4)) / (2*h);

for i=3:n % Percorre elementos do vetor X de 3 a n
    dydx(i) = (y(i-2) - 4 * y(i-1) + 3 * y(i)) / (2*h); % Aplica a fórmula (Regressiva)
end
