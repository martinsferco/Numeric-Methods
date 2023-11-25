clc;
clear;

exec("../../Metodos/Unidad7/chebyshev.sci");
exec("../../Metodos/Unidad7/diferenciasDivididas.sci");

deff("y = f(x)", "y = e.^x");

x = chebyshev(4);
y = exp(x);

pol = interpolacionDiferenciasDivididas(x,y);

X = [-1: 0.001 : 1];
Y = exp(X);
YP = horner(pol, X);

error = Y - YP;