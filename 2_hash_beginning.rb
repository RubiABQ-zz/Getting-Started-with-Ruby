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

# Iteration over the as table
#   This pulls out keys and values out
#   one object at a time.
#  Return value of the each is the hashtable.
h.each do |k|
puts k
end

# Iteration over the keys
h.each_key do |k|
puts k
end

# Iteration over the pairs (key => value)
puts "Iteration over the pairs (key => value)"
h.each_pair do |k, v|
puts "k=", k
puts "v=", v
end

# Create a second hash table and merge it with the first.
puts "Create a second hash table"
snds = { "cat" => "meow", "bird" => "chirp" }
m = h.merge(snds)
# Note: the returned value is the merged array, h and snds are not changed.
# To merge into a hash table use merge! This will make h be the merged
# hash table. Also note that h and snds both have a "cat" key. The merged
# table contains only the value from the second hash table.

# How to check if a key exists in the hash table
snds.has_key?("dog")
snds.has_key?("cat")


