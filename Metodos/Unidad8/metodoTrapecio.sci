function int = metodoTrapecio(fun, a, b)
  
  // Verificamos que el intervalo sea correcto
  if (b < a) then
    error("metodoTrapecio: Intervalo incorrecto");
    abort;
  end
  
  deff("y=f(x)","y=" + fun); // Definimos nuestra funcion

  h = b - a;

  int = (h / 2) * (f(a) + f(b));

endfunction


function int = metodoTrapecioCompuesto(fun, a, b, n)

  // Verificamos que el intervalo sea correcto
  if (b < a) then
    error("metodoTrapecioCompuesto: Intervalo incorrecto");
    abort;
  end

  // Verificamos que el n sea correcto
  if (n <= 0) then
    error("metodoTrapecioCompuesto: Valor de n incorrecto");
    abort;
  end

  deff("y=f(x)","y=" + fun); // Definimos nuestra funcion

  h = (b - a) / n;

  int = 0;

  xj = a;

  for j = [0 : n]

    if j == 0 || j == n then

      int = int + 1/2 * f(xj);
    
    else

      int = int + f(xj);
    
    end
    
    xj = xj + h; // Actualizamos el punto
  
  end

  int = h * int;

endfunction