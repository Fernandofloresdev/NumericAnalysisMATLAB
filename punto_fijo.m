function punto_fijo(g, tol, N, P_zero)
%Método de punto fijo
i=1;
while (i<=N)
    x=P_zero;
    p=eval(g);
    if(abs(p-P_zero)<tol)
        fprintf('punto fijo en %d en %d iteraciones \n',p,i );
        return
    end
    i=i+1;
    P_zero=p;
end
fprintf('Metodo fracaso para %d iteraciones \n', N );
    
    
