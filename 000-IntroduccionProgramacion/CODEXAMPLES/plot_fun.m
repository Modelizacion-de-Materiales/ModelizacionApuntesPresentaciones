%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% MDF - Modelización 2015 %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% function xy=plot_fun(nombre_archivo,{col1,{col2,...}})
% 
% Esta funcion grafica las listas dadas en el archivo de datos
%
% INPUT --
% nombre_archivo : archivo de donde leer los datos
% Opcionales :  
% cols:  argumentos opcionales, columnas para graficar. Siempre en función
%        de la primera columna
%
% OUTPUT --
% xy : lista de datos graficados. 

function xy=plot_fun(nombre_archivo,varargin)

% abro el archivo a leer
fid=fopen(nombre_archivo,'r');

i=0;

% mientras que no se haya alcanzado el final del archivo, leer una línea
% más. 
while ~ feof(fid)
    % leer la línea actual,
    line=fgetl(fid);
    
    % sacarle los espacios en blanco de antes y de despues.
    line=deblank(line);
    
    if regexp(line,'^\s*#+')
        % saltearse las líneas que empiezen con #, tal vez predecidas por
        % espacios. Estamos definiendo comentarios!
        continue
    elseif regexp(line,'^\s*$+')
        % saltearse las líneas que empiezen con $, tal vez predecidas por
        % espacios. Estamos definiendo comentarios!        
        continue
    elseif regexp(line,'^\s*%+')
        % saltearse las líneas que empiezen con %, tal vez predecidas por
        % espacios. Estamos definiendo comentarios!        
        continue        
    elseif isempty(line)
        continue
    else
        % si no hay comentarios, leer la línea, 
        % y separar para guardar los datos en un vector.
        i=i+1;
        xy(i,:)=strread(line);
    end
end

% El numero de columnas a graficar.
p = nargin -1 ;

[ n m ] = size(xy);

% reinicio los graficos que existan.
hold off

% y grafico todas las columnas indicadas.
% para eso recorro los argumentos opcionales.
for i=1:p
    col = varargin{i};
    plot(xy(:,1),xy(:,col));
    % mantengo el gráfico para agregar una nueva curva.
    hold on
end

% cierro el archivo. 
fclose(fid);
