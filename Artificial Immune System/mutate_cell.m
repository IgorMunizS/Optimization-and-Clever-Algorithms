function mutate = mutate_cell(cell, best_match)
range = 1.0 - best_match{4};

for i = 1:length(cell{2})
    minimo = max([(cell{2}(i) - range/2.0), 0.0]);
    maximo = min([(cell{2}(i) + range/2.0), 1.0]);
    cell{2}(i) = minimo + (rand() * (maximo - minimo));
end
mutate = cell;
end