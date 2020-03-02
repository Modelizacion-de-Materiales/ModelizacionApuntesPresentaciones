%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%                Modelización de Materiales 2012                %%%%%%
%                        Método de Elementos Finitos                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% function K = matriz_barra (A,E,nelem,nodos_local)
% toma la barra definida entre los nodos dados y calcula su matriz, en
% función también de la constante elástica E.
%
% INPUT -- 
% A : Area de la barra, en m^2
% E : Módulo Elástico de la barra. En Pa.
% nelem : numero de elemento que se esta calculando.
% nodos_local : coordenadas de los Nodos que determinan los extremos de l
%                a barra. 
%
% OUTPUT --
% K : Matriz del elemento barra actual.

function K = matriz_barra (A,E,nelem,nodos_local)
gl = 2 ;
r1=nodos_local(1,:);
r2=nodos_local(2,:);

theta = atan2(r2(2)-r1(2),r2(1)-r1(1));
L = norm(r2-r1);

R=[ cos(theta)  sin(theta) ; -sin(theta)  cos(theta) ];
T=[R , zeros(2) ; zeros(2), R];

K=(E*A/L)*[1  0 -1 0 ; 0 0 0 0 ; -1 0 1 0; 0 0 0 0];

K = T'*K*T ;

fid=fopen('matrices.dat','a');
matriz_titel='\n Elemento %d ( / (E A /L ) ) \n -------------------------- \n';
fprintf(fid,matriz_titel, nelem);
for i=1:gl*2
    fprintf(fid,'%6.8f  %6.8f  %6.8f  %6.8f \n',K(i,:)/(E * A /L ) );
end
fclose(fid);
