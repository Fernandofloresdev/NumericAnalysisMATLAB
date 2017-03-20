function secante (f, a, b, tol, N, p_zero, p_one)
i=2;
x=p_zero;
q_zero = eval(f);
x=p_one;
q_one = eval(f);
df = diff(f);
while(i<=N)
    x=p_zero;
    p = p_one-q_one*(p_one-p_zero)/(q_one-q_zero);
    if(abs(p-p_one)< tol)
        fprintf('Secante- iteraciones : %d, Raíz aproximada %d \n', i,p);
        return
    end
    i=i+1;
    p_zero=p_one;
    q_zero=q_one;
    p_one=p;
    x=p;
    q_one=eval(f);
end
fprintf('Metodo falló después de %d iteraciones \n', i );
end