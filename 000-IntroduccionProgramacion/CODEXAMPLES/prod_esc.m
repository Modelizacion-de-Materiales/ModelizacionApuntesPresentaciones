% modelizacion de materiales y 
%                procesos 2015
% Funciones
function [ y , z ] = prod_esc(x1,x2)

% el producto escalar de los vectores:
y = x1 * x2';

% la norma de los vectores, primero como yo la calculo y segundo usando 
% una función de matlab
norm1 = sqrt( x1*x1' );
norm2 = norm(x2);

El coseno del angulo entre los dos vectores:
z = y / ( norm1 * norm2 );

