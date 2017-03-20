function [p,N] = biseccion( f,a, b, N, tol) 

%Método de biseccion 03/02/2016
%Escrito por Oscar Fernando Flores García

%Set function on this lines
%syms x;
%f = symfun(x^3+4*x^2-10, x);
%Set functions
x=a;
FA = eval(f);
FPN = 0;
firsta=a;
firstb=b;
%Algoritmo
i = 1; 

while i <= N 
   p = a + ((b-a)/2);
   x=p;
   FP = eval(f);
   maxbound = b-a / 2^i;
   
   error = abs(b-a)/ min(abs(a),abs(b));
   %(abs(FP-FPN)/abs(FP)) <= tol
   %using tolerance (FP == 0)|| (((b-a)/2) < tol)
   if ((FP == 0)|| (((b-a)/2) < tol)) 
       N=i;
       res = maxbound - p ;
       fprintf('La Raíz es %f. \n', p);
       fprintf('El error es %d \n', error);
       %fprintf('Maxbound is %d, aproximation is %d \n' , maxbound, p);
       fprintf('Número de iteraciones %d \n', i);
       %fplot(@(x) eval(f), [a b]);
       return 
   end
   
   
   if ( FA * FP > 0 ) 
       a = p; 
       FA = FP;
   else
       b=p;
   end
   
   FPN = FP;
   %fprintf('P %d= %d \n', i,p);
   
   i=i+1;
end
    fprintf('Método falló, número de intentos : %d, P = %d \n', i-1, p);

    %fplot(@(x) eval(f), [firsta firstb]);
end 