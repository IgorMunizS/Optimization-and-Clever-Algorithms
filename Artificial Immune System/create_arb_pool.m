function arb_pool =  create_arb_pool(best_match, clone_rate, mutate_rate)
x  = create_cell(best_match{2}, best_match(1));
pool = x;
num_clones = round(best_match{4} * clone_rate * mutate_rate);

for i = 1:num_clones
    cell = create_cell(best_match{2}, best_match(1));
    
     mutated_cell = mutate_cell(cell, best_match);
%      best_match{1} = mutated_cell{1};
%      best_match{2} = mutated_cell{2};
%      for c = 1:length(pool)
%          pool(c,:) = mutated_cell;
%      end
     pool(end+1, :) = mutated_cell;
end
arb_pool = pool;
end