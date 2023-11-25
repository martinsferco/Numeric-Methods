clc;
clear;

exec("../../Metodos/Unidad8/integracionBidimensional.sci");

deff("y = cero(x)", "y = 0"); // Defino mi funcion constante 0
deff("y = uno(x)", "y = 1"); // Defino mi funcion constante 1 

disp(integracionBidimensionalTrapecio("sin(x+y)", cero, uno, 0,2, 10000, 10000));