function mem_cells = initialize_cells(domain)
mem_cells = {};
key = keys(domain);
for k = 1:length(key)
    x = create_cell(random_vector([0 1; 0 1; 0 1; 0 1]), key(k));
    mem_cells(k,:) = x;
end
end