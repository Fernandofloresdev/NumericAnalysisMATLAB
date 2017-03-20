function practica3 ()

syms x;
f = x^3-2*x^2-5;
g = x^3+3*x^2-1;
h = x-cos(x);
j = x-0.08-0.2*(sin(x));
k = x^2-2*x*exp(-x)+exp(-2*x);
l = cos(x+sqrt(2))+x*(x/2+sqrt(2));

a_ = [1,-3,0,0,0,-2];
b_ = [4,-2,pi/2,pi/2,1,-1];
p_zero_ = [2,-3,0,0,0.5,-1.5];
f_ = [f,g,h,j,k,l];

tol = 10^(-4);
i = 0;
N=100;
fprintf('\n Ejercicio 1 \n');
for i= 1:4
    newton(f_(i), a_(i),b_(i), tol, N, p_zero_(i));
    secante(f_(i), a_(i),b_(i), tol, N, p_zero_(i), b_(i));
    posicion_falsa(f_(i), a_(i),b_(i), tol, N, p_zero_(i), b_(i));
end

fprintf('\n Ejercicio 2 \n');
%Añadir graficas de i(P) como varía segun el pago, p in [100,10000] y AO 
hipoteca=135000;
P=12000;
n=30;
%(1-(1+x)^(-n))/x-hipoteca*x
A=x/P-(1-(1+x)^(-n))/hipoteca;
x=-0.02:1/100:.1;
n=30;
f=eval(A);
plot(x,f);
tol = 10^-5;

newton(A, 0.05,1,10^-4,100,0.1);
secante(A, 0.05,1,10^-4,100,0.05,0.1);
posicion_falsa(A, 0.05,1,10^-4,100,.05,.01);


%ejercicio 3
fprintf('\n Ejercicio 3 \n');
for i = 5:6
    newton_modificado(f_(i), a_(i),b_(i), tol, N, p_zero_(i));
    newton(f_(i), a_(i),b_(i), tol, N, p_zero_(i));
end
%Ejercicio 3 
