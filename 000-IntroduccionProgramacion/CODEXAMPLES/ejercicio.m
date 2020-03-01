%%% Modelizacion de Materiales 2015 %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
i=1;
flag = true ;
maxsteps = 20 ;
N(1) = 10;

filename1='matriztriangular.dat';

while flag == true
    % Inicio una matriz de numeros al azar de algun tamaño.
    Mrand = rand( N(i) );
    
    disp(['empezando para N = ',num2str(N(i))]);
    % Obtengo la matriz triangular superior por filas y el tiempo de operación.
    [ Mupfil tfil(i) ] = mi_retrogaus(Mrand);
    
    disp(['hecho para N=', num2str(N(i))])    
    
    % Si estoy tardando más de 10 segundos o si ya hice 20 iteraciones, quiero detener el progamma
    if tfil(i) > 10 ||  i==maxsteps
        flag = false;
    

    % En cambio si no voy a detener, quiero modificar logarítmicamente el tamaño de la matriz.    
    else
        i=i+1;    
        N(i) = floor(N(i-1)*10^0.1);
    end
    
    % paso al siguiente ciclo. 
end


loglog(N,tfil,'-ok');
xlabel('matrix size');
ylabel('Tienmpo para eliminación de gauss');
savas(gcf,'tiempos.pdf','pdf');
