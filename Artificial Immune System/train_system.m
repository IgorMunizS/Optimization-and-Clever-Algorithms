function trained_cell = train_system(mem_cells, domain, num_patterns, clone_rate, mutate_rate, stim_thresh, max_res)

for i = 1:num_patterns
    pattern = generate_random_pattern(domain);
    best_match = get_most_stimulated_cell(mem_cells, pattern);
    if best_match{1} ~= pattern{1}
        x = create_cell([pattern{2}], pattern(1));
        mem_cells(end+1,:) = x;
    elseif best_match{4} < 1.0
        pool = create_arb_pool(best_match, clone_rate, mutate_rate);
        cand = refine_arb_pool(pool, pattern, stim_thresh, clone_rate, max_res);
        mem_cells = add_candidate_to_memory_pool(cand, best_match, mem_cells);
    end
    len = length(mem_cells);
    %fprintf('iteração %d , mem_cells = % d \n', i, len);
end
fprintf('iteração %d , mem_cells = % d \n', i, len);
trained_cell = mem_cells;        
end