function int = reglaSimpson(fun, a, b)
  
  // Verificamos que el intervalo sea correcto
  if (b < a) then
    error("metodoTrapecio: Intervalo incorrecto");
    abort;
  end
  
  deff("y=f(x)","y=" + fun); // Definimos nuestra funcion

  h = (b - a) / 2;

  int = (h / 3) * (f(a) + 4 * f(a + h) + f(b));
endfunction


function int = reglaSimpsonCompuesta(fun, a, b, n)

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

  if (pmodulo(n,2) == 1) then
    error("metodoTrapecioCompuesto: el valor n tiene que ser par");
    abort;
  end

  deff("y=f(x)","y=" + fun); // Definimos nuestra funcion

  h = (b - a) / n;

  int = 0;

  xj = a;

  for j = [0 : n]

    if j == 0 || j == n then

      int = int + f(xj);
    
    elseif (pmodulo(j,2) == 1) then

      int = int + 4 * f(xj);
    
    else

      int = int + 2 * f(xj);

    end

    xj = xj + h;

  end

  int = (h / 3) * int;

endfunction