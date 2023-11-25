clc;
clear;

exec("/home/martin/Documents/LCC/2do/R224 - Metodos Numericos/Metodos/Unidad8/integracionBidimensional.sci");


deff("y = abajo(x)", "y = - sqrt(1 - (x-1)**2)");
deff("y = arriba(x)", "y = sqrt(1 - (x-1)**2)");


disp(integracionBidimensionalSimpson("1", 0, 2, abajo, arriba, 1000, 1000));
disp(integracionBidimensionalTrapecio("1", 0, 2, abajo, arriba, 1000, 1000));