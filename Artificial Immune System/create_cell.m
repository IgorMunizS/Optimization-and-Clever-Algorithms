function cell = create_cell(vector, class)

class = cell2mat(class);
cell = {class, vector};
end