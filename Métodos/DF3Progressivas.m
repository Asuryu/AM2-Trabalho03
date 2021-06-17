function [x,y,dydx] = DF3Progressivas(f,a,b,h,y)
%DF3Progressivas - Fórmula das Diferenças Divididas Progressivas (3 pontos)
%   dydx(i) = (-3 * y(i) + 4 * y(i+1) - y(i+2)) / (2*h);

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

for i=1:n-2 % Percorre elementos do vetor X de 1 a n-2
    dydx(i) = (-3 * y(i) + 4 * y(i+1) - y(i+2)) / (2*h); % Aplica a fórmula (Progressiva)
end

% Casos específicos no final para os elementos
% que não foram corridos no ciclo em cima
dydx(n-1) = (y(n-3) - 4*y(n-2) + 3*y(n-1)) / (2*h);
dydx(n) = (y(n-2) - 4*y(n-1) + 3*y(n)) / (2*h);
