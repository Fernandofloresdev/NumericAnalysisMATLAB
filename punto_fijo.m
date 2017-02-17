function punto_fijo(g, tol, N, P_zero)
%Método de punto fijo
i=1;
while (i<=N)
    x=P_zero;
    P_i=eval(g);
    if(abs(P_i-P_zero)<tol)
        fprintf('punto fijo en %d en %d iteraciones \n',P_i,i );
        
        return
    end
    i=i+1;
    P_zero=P_i;
end
fprintf('Metodo fracaso para %d iteraciones \n', N );
    
    
