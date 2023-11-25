clc;
clear;

exec("../../Metodos/Unidad7/diferenciasDivididas.sci")
exec("../../Metodos/Unidad7/chebyshev.sci");

x = chebyshev_ab(4, 0, %pi / 2); // Calculamos las raices de Chebyshev ampliadas
pol = interpolacionDiferenciasDivididas(x, sin(x));