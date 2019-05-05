%Transformada de fourier
function xl = dft(N,x) %N:#muestras, x=funcion
    for k=0:N-1
        xa=0;
        for n=0:N-1
            xa = xa + (x(n+1))*(exp(-1j*2*pi*k*n/N));
        end
        xf(k+1) = xa;
    end
    xl = (abs(xf)/N);
    xph = angle(xf);
    
    plot(xl)
    %plot(xph) %si quieres plotear la phase descomenta esta linea y comenta
               %la de arriba
end
