function vetor = random_vector(intervalo)
vetor = [];
for i = 1:length(intervalo)    
    vetor = [vetor intervalo(i,1) + ((intervalo(i,2) - intervalo(i,1)) * rand())];
end
end