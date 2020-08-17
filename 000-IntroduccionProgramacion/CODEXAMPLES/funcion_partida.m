function f=funcion_partida(x, limite)
  f = ones(length(x));
  for i=1:length(x)
    if x(i) < limite
      f(i) = 1;
    else
      f(i) = 0;
    endif
  endfor
endfunction
