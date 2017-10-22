function pct = execute(domain, num_patterns, clone_rate, mutate_rate, stim_thresh, max_res, num_trials)
    mem_cells = initialize_cells(domain);
    mem_cells = train_system(mem_cells, domain, num_patterns, clone_rate, mutate_rate, stim_thresh, max_res);
    pct = test_system(mem_cells, domain, num_trials);
end