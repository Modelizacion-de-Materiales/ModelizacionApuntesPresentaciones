%%%Modelizacion de Materiales y Procesos 2015 %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Esta función guarda una matriz en el archivo especificado. se pueden 
% guardar varias matrices en el mismo archivo usando la variable step.
%  function fid=guarda_matriz(filename,step,matriz)
% fid: identificador del archivo. 
% filename : nombre de archivo.
% step: numero de matriz a guardar. 
% matriz: nombre de variable autoexplicativo. 


function fid=guarda_matriz(filename,step,matriz)

% Si es el primer step, creo el archivo, de lo contrario agrego en el arhcivo.
if step == 1 
    fid = fopen(filename,'w');
else
    fid = fopen(filename,'a');
end
line='';

% Tamaño de la matriz:
[ n m ]=size(matriz);

% Un simple título
fprintf(fid,'\n \n Matriz de %d x %d en el paso % d \n',n,n,step);
fprintf(fid,'========================================== \n');


for i = 1:n
  % para cada fila de la matriz, genero la linea a guardar. 
  % notar que se convierte a string con precisión especificada. 
    for j=1:m
        line=[line,num2str(matriz(i,j),'  %10.6f    ')];
    end

    % imprimo la línea generada. 
    fprintf(fid,[line,'\n']);
end

% cierro el archivo. 
fclose(fid);
return;
            
