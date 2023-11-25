clc;
clear;

exec("../../Metodos/Unidad7/minimosCuadrados.sci");

X = [4, 4.2, 4.5, 4.7, 5.1, 5.5, 5.9, 6.3, 6.8, 7.1];
Y = [102.56, 113.18, 130.11, 142.05, 167.53, 195.14, 224.87, 256.73, 299.5, 326.72];

[p1, error1] = minimosCuadradosPolinomial(X, Y, 1);
[p2, error2] = minimosCuadradosPolinomial(X, Y, 2);
[p3, error3] = minimosCuadradosPolinomial(X, Y, 3);

// FALTA GRAFICAR LOS DATOS

disp("error1: " + string(error1));
disp("error2: " + string(error2));
disp("error3: " + string(error3));
