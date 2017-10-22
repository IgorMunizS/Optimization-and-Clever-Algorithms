function best = classify_pattern(mem_cells, pattern)
stimulated_cells = stimulate(mem_cells, pattern);
best = get_most_stimulated_cell(stimulated_cells, pattern);
end