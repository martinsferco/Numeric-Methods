// Grafica y nos devuelve la funcion Phin(x) = (x - x0)...(x - xn)
// Consideramos que los nodos de interpolacion estan bien ordenados.
function [x_maximo, y_maximo] = graficarPhi(nodosInterpolacion)
   
    l = length(nodosInterpolacion); 
   
    cuerpoFuncion = "";
    
    for i = [1 : l - 1]
        cuerpoFuncion = cuerpoFuncion + "(x - " + string(nodosInterpolacion(i)) + ") .*";
    end
    
    cuerpoFuncion = cuerpoFuncion + "(x - " + string(nodosInterpolacion(l)) + ")";
    
    deff("y = phi(x)", "y =" + cuerpoFuncion);
    
    rango = [nodosInterpolacion(1):0.001:nodosInterpolacion(l)];
    a = gca();
    a.x_location = "origin";
    a.y_location = "origin";    
    
    imagenes = phi(rango);
    
    plot(rango, imagenes);
    
    [maximo, indice] = max(abs(imagenes));
    
    x_maximo = rango(indice);
    y_maximo = maximo;
   
endfunction
