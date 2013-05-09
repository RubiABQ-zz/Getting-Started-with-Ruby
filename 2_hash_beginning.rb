#
# Creating a hash table with two items
#  A hash table can also be created with 
#    h = hash.New();
#
h = { "cat" => "nice", "dog" => "mean" }
# Access and print keys that exist, and non-existant keys.
puts h["cat"]
puts h["bird"]
puts h["dog"]

# Print all the keys of the hash table.
h.keys
# Print all the values of the hash table.
h.values

# Iternation over the as table
#   This pulls out keys and values out
#   one object at a time.
#  Return value of the each is the hashtable.
h.each do |k|
puts k
end

# Itermation over the keys
h.each_key do |k|
puts k
end

# Iternation over the pairs (key => value)
h.each_pair do |k, v|
puts k
puts v
end


