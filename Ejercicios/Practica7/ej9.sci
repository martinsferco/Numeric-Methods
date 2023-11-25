clc;
clear;

exec("../../Metodos/Unidad7/diferenciasDivididas.sci");
exec("../../Metodos/Unidad7/chebyshev.sci");


function x = particionar(inicio,fin,n) 

  l = (fin - inicio);

  for i = [0:n];

    x(i+1) = inicio + l * i;
  
  end

endfunction



inicio = -5;
fin = 5;

deff("y = f(x)", "y = 1 / (1 + x**2)");


for n = [2,4,6,10,14]

  x = particionar(inicio,fin,n);
  y = f(x);

  p(n) = interpolacionDiferenciasDivididas(x,y);

end


X = [-5:0.001:5]; // Rango de prueba

// Calculamos las imagenes de nuestra funcion
for i = [1:length(X)]
  fy(i) = f(X(i));
end

// Calculamos las imagenes de nuestros polinomios de interpolacion
fp2 = horner(p(2), X);
fp4 = horner(p(4), X);
fp6 = horner(p(6), X);
fp10 = horner(p(10), X);
fp14 = horner(p(14), X);

// Calculamos los errores de interpolacion
error2 = fy' - fp2;
error4 = fy' - fp4;
error6 = fy' - fp6;
error10 = fy' - fp10;
error14 = fy' - fp14;

// Ploteamos los resultados
plot(X, error2, "red");
plot(X, error4, "blue");
plot(X, error6, "green");
plot(X, error10, "yellow");
plot(X, error14, "orange");


