function most_stimulated_cell = get_most_stimulated_cell(mem_cells, pattern)
stimulated_cells = stimulate(mem_cells, pattern);

[~ , idx] = sort([stimulated_cells{:,4}], 'descend');
most_stimulated_cell = stimulated_cells(idx(1),:);

end