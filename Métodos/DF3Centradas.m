function [x,y,dydx] = DF3Centradas(f,a,b,h,y)
%DF3Centradas - Fórmula das Diferenças Divididas Centradas (3 pontos)
%   dydx(i) = (y(i+1) - y(i-1)) / (2*h);

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
                               % que não irá ser corrido no ciclo em baixo

for i=2:n-1 % Percorre elementos do vetor X de 2 a n-1
    dydx(i) = (y(i+1) - y(i-1)) / (2*h); % Aplica a fórmula (Centradas)
end

dydx(n) = (y(n) - y(n-1)) / h; % Caso específico no final para o elemento
                               % que não foi corrido no ciclo em cima
