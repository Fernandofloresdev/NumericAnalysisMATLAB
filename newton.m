function newton( f, a, b, tol, N, p_zero)
i=1;
df = diff(f);
while(i<=N)
    x=p_zero;
    p = p_zero - (eval(f)/eval(df));
    if(abs(p-p_zero)< tol)
        fprintf('Newton- iteraciones : %d, Raíz aproximada %d \n', i,p);
        return
    end
    i=i+1;
    p_zero = p;
end
fprintf('Metodo falló después de %d iteraciones \n', i );
end

