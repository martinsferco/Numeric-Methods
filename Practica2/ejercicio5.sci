clc // Limpia la consola
clear // Limpia la memoria



function d = dfa(fun, v, h, n)

  deff("y = f(x)", "y=" + fun); // Definimos la funcion

  if (n == 0) then

    d = f(v);

  else
    
    d1 = dfa(fun, v + h, h, n - 1);
    d2 = dfa(fun, v, h, n - 1);

    d = (d1 - d2) / h;

  end

endfunction



function f = fact(n)

  if n == 0 then
    
    f = 1;  // Caso base

  else

    f = n * fact(n - 1); // Caso recursivo

  end

endfunction



function pol = taylor(fun, n, v)

  h = 0.0001;

  
  x = poly([0,1], "x", "coeff"); // X como un polinomio
  pol = poly([0], "x", "coeff"); // Polinomio de Taylor nulo


  for i = [0 : 1 : n] 

    // Le sumamos un nuevo termino al polinomio de Taylor
    pol = pol + dfa(fun, v, h, i) * (x - v) ** i / fact(i);  

  end

endfunction
