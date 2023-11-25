clc;
clear;

x_meses = [1 : 10]

tmax = [32.9 30.8 26.4 24.2 19.2 16.5 19.3 21 23 26.2]
tmin = [19.5 15.5 13.1 9.8 5.7 2.2 5.3 4.7 6 10.5]

tprom = (tmax + tmin) ./ 2;

exec("../../Metodos/Unidad7/minimosCuadrados.sci");

// Iteam A
m = length(x_meses);

A = ones(m,1);

for i = [1 : 9]

  A = [A ((x') ** i)]; // Vamos calculando la matriz por columnas

end

// Definimos los polinomios de distintos grados
A3 = A(:,1:4);
coeff3 = inv(A3' * A3) * A3' * tmax';
pol3 = poly(coeff3, "x", "coeff");

A5 = A(:,1:6);
coeff5 = inv(A5' * A5) * A5' * tmax';
pol5 = poly(coeff5, "x", "coeff");

A7 = A(:,1:8);
coeff7 = inv(A7' * A7) * A7' * tmax';
pol5 = poly(coeff7, ,"x", "coeff");

A9 = A(:,1:10);
coeff9 = inv(A9' * A9) * A9' * tmax';
pol9 = poly(coeff9, ,"x", "coeff");

x = [1:0.1:10]; // Anio 2022

// Evaluamos los polinomios
img3 = horner(pol3, x);
img5 = horner(pol5, x);
img7 = horner(pol7, x);
img9 = horner(pol9, x);

disp(pol3);
disp(pol5);
disp(pol7);
disp(pol9);


a = gca();
a.x_location = "origin";
a.y_location = "origin";

// Ploteamos los puntos
scatter(x_meses, tprom);
scatter(x_meses, tmin);
scatter(x_meses, tmax);

// Ploteamos los polinomios
plot(x, img3);
plot(x, img5);
plot(x, img7);
plot(x, img9);



