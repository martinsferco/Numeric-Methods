exec("../../Metodos/Unidad4/metodoQR.sci");

function pol = minimosCuadradosQR(x,y,n)

  m = length(x);
  A = ones(m,1);

  for j =  1 : n

    A = [A ((x') ** j)]
  
  end
  
  S = metodoQR(A)

endfunction