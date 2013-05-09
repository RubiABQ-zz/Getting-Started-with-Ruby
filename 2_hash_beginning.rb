h = { "cat" => "nice", "dog" => "mean" }
puts h["cat"]
puts h["bird"]
puts h["dog"]

h.keys
h.values

h.each do |k|
puts k
end

h.each_key do |k|
puts k
end

h.each_pair do |k, v|
puts k
puts v
end


