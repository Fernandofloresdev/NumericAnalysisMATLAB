function [solution] = obtener_n_punto_fijo (f,a,b, tol,P_zero)

g = diff(f); %primera derivada de la función 
h=diff(g); %segunda derivada de la función 
g
h
syms x;

g_function = eval(g);
h_function = eval(h);
g_new_function = (x<a).*(-1) +(x>b).*(1)+(x>=a)*g_function;
h_new_function = (x<a).*(-1) +(x>b).*(1)+(x>=a)*h_function;
g_new_function
h_new_function
g_solved = solve(g_new_function==0 ,x);
h_solved = solve(h_new_function==0 ,x);
g_solved
h_solved

if isnan(g_solved)
    x=a;
    g_evaluated_in_a = eval(g);
    x=b;
    g_evaluated_in_b = eval(g);
    if(g_evaluated_in_a > g_evaluated_in_b && g_evaluated_in_a <1)
        k=g_evaluated_in_a;
        x=a;
        P_one = eval(f);
        
    else if (g_evaluated_in_b <1)
            k= f_evaluated_in_b;
            x=b;
            P_one = eval(f);
        end 
    end
    
    
    
else 
x=h_solved;
g_evaluated = eval(g);
x=g_solved;
f_evaluated = eval(f);


syms x;
k = g_evaluated;
P_one = f_evaluated;
end
%g evaluada es k 
k=.64;


inequation = tol == ((k.^x)/(3/4))*(abs(P_one-P_zero));

n = solve(inequation);
fprintf('numero de iteraciones');
solution = vpa(n);
end