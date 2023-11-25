clc;
clear;

exec("../../Metodos/Unidad8/metodoSimpson.sci");
exec("../../Metodos/Unidad8/metodoTrapecio.sci");

trap_a = metodoTrapecio("log(x)", 1, 2);
trap_b = metodoTrapecio("x^(1/3)", 0, 0.1);
trap_c = metodoTrapecio("(sin(x))^2", 0, %pi /3);

simp_a = reglaSimpson("log(x)", 1, 2);
simp_b = reglaSimpson("x^(1/3)", 0, 0.1);
simp_c = reglaSimpson("(sin(x))^2", 0, %pi /3);

disp("Metodo trapecio integral A: " + string(trap_a));
disp("Metodo trapecio integral B: " + string(trap_b));
disp("Metodo trapecio integral C: " + string(trap_c));

disp("Metodo Simpson integral A: " + string(simp_a));
disp("Metodo Simpson integral B: " + string(simp_b));
disp("Metodo Simpson integral C: " + string(simp_c));

function y = fa(x)
  y = log(x);
endfunction

function y = fb(x)
  y = x^(1/3);
endfunction

function y = fc(x)
  y = (sin(x))^2;
endfunction




intA = intg(1, 2, fa);
intB = intg(0, 0.1, fb); 
intC = intg(0, %pi/3, fc);

disp("A: " + string(intA));
disp("B: " + string(intB));
disp("C: " + string(intC));

// Acotar errores