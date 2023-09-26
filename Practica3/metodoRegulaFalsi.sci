clc // Limpia la consola
clear // Limpia la memoria

function r = metodo_regula_falsi(f, a, b, tolerancia, maxIteraciones)

    deff("y = f(x)", "y =" + f); // Definimos la funcion
    
    if f(a)*f(b) >= 0 then // Intervalo invalido para aplicar el metodo
        
        r = %nan
        disp("Valores de A y B invalidos");
        return
    end
    
    
    numIters = 0; // Numero iteraciones
    
    r = b - f(b) * (b - a) / (f(b) - f(a));
    
    while abs(f(r)) > tolerancia && numIters <= maxIteraciones then
        
        numIters = numIters + 1;  
        
        if f(b) * f(r) < 0 then // Nos quedamos con el subintervalo derecho
        
            a = r;
      
        else b = r; // Nos quedamos con el subintervalo izquierdo

        end
        
        r = b - f(b) * (b - a) / (f(b) - f(a));  // Recalculamos la aproximacion
    
    end

    if abs(f(r)) > tolerancia then disp("Se alcanzo el maximo de iteraciones"); end
    
endfunction
