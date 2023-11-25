exec("/home/martin/Documents/LCC/2do/R224 - Metodos Numericos/Metodos/Unidad8/metodoSimpson.sci");
exec("/home/martin/Documents/LCC/2do/R224 - Metodos Numericos/Metodos/Unidad8/metodoTrapecio.sci");

// a y b son constantes, d y c son funciones de una variable.
// n y m cantidad de particiones por integralervalo.
function integral = integralegracionBidimensionalTrapecio (fun, a, b, c, d, n ,m)

  h = (b - a) / n;

  deff("y = f(x,y)", "y = " + fun);

  integral = 0

  xj = a;

  for j = 0 : n - 1


    integralegral = integral  + metodoTrapecioCompuesto(construirFuncion(fun, xj), c(xj), d(xj), m); 

    xj = xj + h;

  end

  integral = integral  + reglaSimpsonCompuesta(construirFuncion(fun, b), c(b), d(b), m); 

  integral = h * integral;

endfunction


// a y b son constantes, d y c son funciones de una variable.
// n y m cantidad de particiones por integralervalo.
function integral = integralegracionBidimensionalSimpson (fun, a, b, c, d, n, m)


  h = (b - a) / n;

  deff("y = f(x,y)", "y = " + fun);

  integral = 0

  xj = a;

  for j = 0 : n - 1 

    integral = integral  + reglaSimpsonCompuesta(construirFuncion(fun, xj), c(xj), d(xj), m); 
    
    xj = xj + h;
  
  end

  integral = integral  + reglaSimpsonCompuesta(construirFuncion(fun, b), c(b), d(b), m); 


  integral = h * integral;



endfunction



function fxj = construirFuncion(fun, xj)

  fxj = strsubst(fun, 'x', string(xj));
  fxj = strsubst(fxj, 'y', "x");

endfunction

