N=1000;
Xa=0;
for k=0:N-1
  
  for n=0:N-1
    Xa = Xa + x(n+1)*e^(-1i*2*pi*n*k/N);
  endfor
  X(k+1)=Xa;
  Xa=0;
endfor 
A=abs(X);
%Phi=angle(X);
%plot(A)
plot(abs(X)/N) %N*2
%plot(X)