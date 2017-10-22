function unim = test_unimodal(f, intervalo)

syms('x')
f = subs(f);

df = double(solve(diff(f)));

df(imag(df)==0); %Elimina raízes complexas
df = unique(df); %Elimina raizes repetidas
maxPoint = [];

for i = 1:length(df)
    if df(i)>=intervalo(1)&&df(i)<intervalo(2)
        maxPoint(end+1) = df(i);
    end
end

if length(maxPoint) == 1
    unim = 1;
else
    unim = 0;
end


end