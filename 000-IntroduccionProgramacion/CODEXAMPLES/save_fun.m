%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% MDF - Modelización 2015 %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function f_id=save_fun(x,y,nombre_archivo)
% Esta función escribe la lista x , y a un archivo
% INPUTS -- 
% x : vector x
% y : matriz con todas las funciones de x
%    y(i,:)= [ y1(x(i)), y2(x(i)),... ]
% nombre_archivo : string con el nombre del archivo a generar. 
%
% OUTPUT --
% f_id : identificador del archivo. 
%       f_id > 2 : el archivo no tuvo problemas
%       f_id = -1 : hubo problemas

function f_id=save_fun(x,y,nombre_archivo)

% veo la dimensión de x
n = length(x);

% y la dimensión de y, notar que l es la cantidad de columnas que definen
% las funciones. 
[ k l ] = size(y);

% abrir el archivo con permiso de escritura.
f_id=fopen(nombre_archivo,'w');

% guardar un encabezado
fprintf(f_id,'# x  y \n######### \n');

% guardo todos los datos.
for i=1:n
    fx=[];
    
    % imprimo en una variable todas las funciones con formato, para 
    for j=1:l
        fx=[ fx , sprintf('  %10.8f  ',y(i,j) ) ];
    end
    
    % la linea que voy a guardar tiene este formato,
    fmt=['%10.8f  ',fx,' \r\n '];
    
    % finalmente imprimo la linea.
    fprintf(f_id,fmt,x(i));
    
end

fclose(f_id);
