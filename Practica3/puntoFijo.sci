clc // Limpiamos la consola
clear // Limpiamos la memoria

function resultado = puntoFijo(fun, x0, tolerancia, maxIters)

  deff("y=f(x)", "y=" + fun); // Definimos la funcion

  resultado(1) = f(x0); // Primera iteracion

  numIter = 1;

  while abs(x0 - resultado(1)) > tolerancia && numIter < maxIters

    x0 = resultado(1); 

    resultado(1) = f(x0); // Recalculamos valor

    numIter = numIter + 1;

  end

  if abs(x0 - resultado(1)) > tolerancia then disp("Maximo numero de iteraciones") end;

  resultado(2) = numIter;


endfunction
