function [Q,R] = factorizacionQR(A)
    
    [m,n] = size(A);
    
    if  m < n then
        error("factorizacionQR - Hay vectores linealmente dependientes")
        abort;
    end
    
    Q = zeros(m,n);
    R = zeros(n,n);
    
    for k = 1 : n // Iteramos por las columnas de la matriz
        
        vectorProyectado = A(1:m, k);
        
        for i = 1 : k - 1 
            
            R(i,k) = A(1:m, k)' * Q(1:m, i);
            
            vectorProyectado = vectorProyectado - R(i,k) * Q(1:m, i);
        end
        
        Q(1:m, k) = vectorProyectado / norm(vectorProyectado);
        
    end
    
endfunction
