%Sirve para pasar funciones continuas a discretas
function x = discreator(nc,ns,a,phase) %nc:#ciclos,ns:#muestras,a:amplitud,phase:phase 
    for n=0:ns-1
        x(n+1) = a*sin(2*pi*n/nc + phase);
    end

end
