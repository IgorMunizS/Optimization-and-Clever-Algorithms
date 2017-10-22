function pct = test_system(mem_cells, domain, num_trials)
correct = 0;

for i = 1:num_trials
    pattern = generate_random_pattern(domain);
    best = classify_pattern(mem_cells, pattern);
    if best{1} == pattern{1}
        correct = correct +1;
    end
end
pct = (correct/num_trials) * 100;
fprintf(' Teste terminado com acerto de: %d / %d \n', correct, num_trials)
fprintf('Porcentagem: %d %', pct);
end