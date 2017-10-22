function cand = refine_arb_pool(pool, pattern, stim_thresh, clone_rate, max_res)
mean_stim = 0.0;
while mean_stim < stim_thresh
    
    stimulated_cells = stimulate(pool, pattern);
  
    [~ , idx] = sort([stimulated_cells{:,4}], 'descend');
    candidate = stimulated_cells(idx(1),:);
    mean_stim = mean([stimulated_cells{:,4}]);
    if mean_stim < stim_thresh
        %pool = competition_for_resournces(stimulated_cells, clone_rate, max_res);
 
%         for i = 1:length(pool)
%             cell = create_cell(pool{i,2}, pool(i,1));
%             mutated_cell = mutate_cell(cell, pool(i,:));
%             
%     
%             for c = 1:length(pool)
%                  pool(c,1) = mutated_cell(1);
%                  pool(c, 2) = mutated_cell(2);
%             end
%             
%             pool(end +1, 1) = mutated_cell(1);       
%             pool(end, 2) = mutated_cell(2);
%         end
          for i = 1:length(stimulated_cells)
                cell = create_cell(stimulated_cells{i,2}, stimulated_cells(i,1));
                mutated_cell = mutate_cell(cell, stimulated_cells(i,:));


%                 for c = 1:length(pool)
%                      pool(c,1) = mutated_cell(1);
%                      pool(c, 2) = mutated_cell(2);
%                 end

                pool(end +1, 1) = mutated_cell(1);       
                pool(end, 2) = mutated_cell(2);
          end
          pool = stimulate(pool, pattern);
          pool = competition_for_resournces(pool, clone_rate, max_res);

    end
end
cand = candidate;

end