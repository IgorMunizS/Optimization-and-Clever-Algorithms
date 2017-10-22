function max = golden_section(a,b,epsi)

%Checar se a função é unimodal no intervalo [a,b]
intervalo = [a b];
%Verificando se é unimodal
[~,s] = f(1);

unim = test_unimodal(s,intervalo);

if unim == 1
    fprintf('\n  Função Unimodal \n');
else
    fprintf('\n Função não é unimodal neste intervalo \n');
    return;
end


    
%%% Golden Section Search 
tau = 0.618; % Constante de ouro

% Calculando número de iterações necessárias
 k = log(epsi/(b-a))/log(tau);
 k = ceil(k) %arredondando para cima
 
 %Determinando x1 e x2
x1=a+(1-tau)*(b-a);             
x2=a+tau*(b-a);

f1 = f(x1);
f2 = f(x2);

n =0;
while (n < k)
    n=n+1;
    if(f1>f2)
        b=x2;
        x2=x1;
        x1=a+(1-tau)*(b-a);
        
        f1=f(x1);
        f2=f(x2);
        
       
    else
        a=x1;
        x1=x2;
        x2=a+tau*(b-a);
        
        f1=f(x1);
        f2=f(x2);
        
        
    end
    
    
end


%Plotando o ponto máximo no intervalo
a = -2:0.01:2;
y = f(a);
if(f1<f2)
    sprintf('x_max=%f', x1)
    sprintf('f(x_max)=%f ', f1)
    plot(a, y, '-',x1,f1,'ro')
    axis([-2 2 -1 20])
else
    sprintf('x_max=%f', x2)
    sprintf('f(x_max)=%f ', f2)
    plot(a, y, '-', x2,f2,'ro')
    axis([-2 2 -1 20])
end



    
end

