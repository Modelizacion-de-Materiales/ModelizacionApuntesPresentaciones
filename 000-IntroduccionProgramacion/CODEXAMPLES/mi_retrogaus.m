%%% Modelizacion de Materiales 2015 %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% mi_retrogauss: triangulacion de Gauss.
% function [B,t] = mi_retrogaus(A)
% B: matriz triangular superior.
% t: tiempo utilizado para obtencion de B
% A: matriz a triangular. 
function [B,t] = mi_retrogaus(A)

n=length(A);

B= A;

tic;

for i=1:n
    for j=i+1:n %filas
        B(j,:)=B(j,:)-B(j,i)*B(i,:)/B(i,i);
    end
end
    
t=toc;
