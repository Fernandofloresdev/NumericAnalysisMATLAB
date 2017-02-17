function [solution] = obtener_n_punto_fijo (f, tol,P_zero)

g = diff(f); %primera derivada de la función 
h=diff(g); %segunda derivada de la función 
g
h
syms x;

g_solved = solve(g==0 ,x );
h_solved = solve(h==0 ,x );
g_solved
h_solved

x=h_solved;
g_evaluated = eval(g);
x=g_solved;
f_evaluated = eval(f);

%g evaluada es k 
syms x;
k = g_evaluated;
P_one = f_evaluated;


inequation = tol == ((k.^x)/(3/4))*(abs(P_one-P_zero));

n = solve(inequation);
fprintf('numero de iteraciones');
solution = vpa(n);
end