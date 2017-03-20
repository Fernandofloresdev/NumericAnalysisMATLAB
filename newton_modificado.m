function newton_modificado(f, a, b, tol, N, p_zero)
i=1;
df = diff(f);
dff = diff(df);
while(i<=N)
    x=p_zero;
    p = p_zero - (eval(f)*eval(df)/((eval(df)^2)-(eval(f)*eval(dff))));
    if(abs(p-p_zero)< tol)
        fprintf('Newton modificado- iteraciones : %d, Raíz aproximada %d \n', i,p);
        return
    end
    i=i+1;
    p_zero = p;
end
fprintf('Metodo falló después de %d iteraciones \n', i );
end

