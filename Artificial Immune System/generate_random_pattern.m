function pattern = generate_random_pattern(domain)

key = keys(domain);
class = key(randi([1 length(key)]));
class = cell2mat(class);
vector = random_vector(domain(class));
pattern = {class, vector};
end