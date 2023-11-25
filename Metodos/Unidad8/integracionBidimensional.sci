exec("/home/martin/Documents/LCC/2do/R224 - Metodos Numericos/Metodos/Unidad8/metodoSimpson.sci");
exec("/home/martin/Documents/LCC/2do/R224 - Metodos Numericos/Metodos/Unidad8/metodoTrapecio.sci");

// a y b son constantes, d y c son funciones de una variable.
// n y m cantidad de particiones por intervalo.
function int = integracionBidimensionalTrapecio (fun, a, b, c, d, n ,m)

  h = (b - a) / n;

  deff("y = f(x,y)", "y = " + fun);

  int = 0

  xj = a;

  for j = 0 : n - 1


    int = int  + metodoTrapecioCompuesto(construirFuncion(fun, xj), c(xj), d(xj), m); 

    xj = xj + h;

  end

  int = int  + reglaSimpsonCompuesta(construirFuncion(fun, b), c(b), d(b), m); 

  int = h * int;

endfunction


// a y b son constantes, d y c son funciones de una variable.
// n y m cantidad de particiones por intervalo.
function int = integracionBidimensionalSimpson (fun, a, b, c, d, n, m)


  h = (b - a) / n;

  deff("y = f(x,y)", "y = " + fun);

  int = 0

  xj = a;

  for j = 0 : n - 1 

    int = int  + reglaSimpsonCompuesta(construirFuncion(fun, xj), c(xj), d(xj), m); 
    
    xj = xj + h;
  
  end

  int = int  + reglaSimpsonCompuesta(construirFuncion(fun, b), c(b), d(b), m); 


  int = h * int;



endfunction



function fxj = construirFuncion(fun, xj)

  fxj = strsubst(fun, 'x', string(xj));
  fxj = strsubst(fxj, 'y', "x");

endfunction

