function memory_pool = add_candidate_to_memory_pool(candidate, best_match, mem_cells)
if candidate{4} > best_match{4}
    mem_cells(end+1, 1) = candidate(1);
    mem_cells(end, 2) = candidate(2);
end
memory_pool = mem_cells;
end