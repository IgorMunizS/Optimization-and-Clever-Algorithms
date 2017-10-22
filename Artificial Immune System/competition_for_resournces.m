function competition = competition_for_resournces(pool, clone_rate, max_res)
for i = 1: length(pool)
    pool{i, 5} = pool{i,4} * clone_rate;
end

[~ , idx] = sort([pool{:,5}], 'descend');
sorted_pool={};
for i = 1: length(idx)
    sorted_pool(i,:) = pool(idx(i),:);
end
total_resources = sum([sorted_pool{:,5}]);
while total_resources >  max_res
    cell = sorted_pool(end,:);
    sorted_pool(end,:) = [];
    total_resources = total_resources - cell{5};
end
competition = sorted_pool;
end