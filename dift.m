%Transformada inversa de fourier
N=1000;
%function xi = dift(1000,x) %N:#muestras, x=funcion
    for n=0:N-1
        xa=0;
        for k=0:N-1
            xa = xa + (x(k+1))*(exp(1j*2*pi*k*n/N));
        end
        xf(n+1) = xa;
    end
    xi = abs(xf);
    xph = angle(xf);
    
    plot(xi)
    %plot(xph) %si quieres plotear la phase descomenta esta linea y comenta
               %la de arriba
%end
