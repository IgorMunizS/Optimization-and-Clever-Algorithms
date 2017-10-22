function stimulated_cell = stimulate(cells, pattern)
max_dist = pdist([[0.0,0.0]; [1.0,1.0]]); % Distancia euclidiana
    for i = 1:length(cells)
        affinity = pdist([cells{i,2};pattern{2}]) / max_dist;
        cells{i, 3} = affinity;
        stimulation = 1.0 - affinity;
        cells{i, 4} = stimulation;
    end
    stimulated_cell = cells;
end