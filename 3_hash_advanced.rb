#! /usr/bin/env ruby

# Hashes can take a block that will be executed IFF the key is not found
# in the hash when it is accessed.

# My first example of this is a hash that raises an error when the key isn't
# found.  This can be especially handy when you are getting values from humans
# and you're worried that they may be misspelled.  I'd rather have an error
# raised quickly than get back a nil that gets passed around a bunch and
# eventually causes an error.

# I am using the convention of having a variable named "_" to represent a
# parameter that is not used.

h = Hash.new do |_, key|
  raise ArgumentError, "#{key.inspect} is not a valid value"
end

h['foo'] = 'bar'

# This access of h will succeed
begin
  puts h['foo']
rescue ArgumentError
  puts "uh oh.  We should never have gotten here"
end

# This access of h should fail

begin
  puts h['f00']
rescue ArgumentError
  puts "See, an error was thrown.  We rescued it so we can continue"
end

# Another thing you can do with the block is to "canonicalize" the key.
# An example of canonicalization would be to always have the key be a
# lower-case string, but to allow the user of the hash to pass in a key
# with any case.

h = Hash.new do |h, k|
  canonical_key = k.downcase
  # Only look again if there is a change in the key, otherwise we will
  # recurse forever.
  h[canonical_key] if canonical_key != k
end

h['key'] = 'value'
puts h['key'].inspect
puts h['kEy'].inspect
puts h['not-a-key'].inspect
