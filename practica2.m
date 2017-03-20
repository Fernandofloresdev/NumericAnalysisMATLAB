function practica2()
clc, clear all;
%Problema 2
g=32.17;
k=0.1;
s_0=300;
m=0.25;

%
s=x+((s_0-(m*g*x/k))*k^2+((g*m^2))*(1-exp((-k*x)/m)));
biseccion(s,0,10,100,0.01);
punto_fijo(s,0.01,N,5);
x=0:1/10:100;
y=eval(s);
plot(x,y)
end 
