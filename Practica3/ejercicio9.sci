function result = metodo_newton_multivariable(f, x0, tolerancia, maxIter)  
    
    numIters = 0; // Numero de iteraciones del metodo
    
    J = numderivative(f, x0); // Calculamos la matriz Jacobiana de f en x0
    J = inv(J); // Inverimos la matriz
    
    xn = x0 - J * f(x0); // Calculamos una iteracion del metodo
    
    while norm(f(xn)) > tolerancia && numIters < maxIter then // Usamos norma Euclidea
        
        numIters = numIters + 1
        
        x0 = xn
     
        J = numderivative(f, x0);
        J = inv(J);
    
        xn = x0 - J * f(x0); // Calculamos otra iteracion del metodo
     
    end
    
    result = xn; // Resultado conseguido

end

r1 = 1;
r2 = 2;
r3 = 3;

// Representamos el sistema:
function res = sistema(X)
    res = [X(1) * (%e)^(X(2) * r1) + X(3)*r1 - 10 ;
           X(1) * (%e)^(X(2) * r2) + X(3)*r2 - 12 ;
           X(1) * (%e)^(X(2) * r3) + X(3)*r3 - 15 ];
endfunction


x0 = [2 ; 2 ; 2]


disp(metodo_newton_multivariable(sistema, x0, 0.001, 100000))




