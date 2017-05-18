# Method that takes a block

def sup_bro
  puts "This is what it's like before a block"
  name = 'Mitch'
  yield(name)
  puts 'This is after a block'
end

sup_bro { |name| puts "Here comes that block with a uniquie person called #{name}" }

# Begin Array and Hash Block example .each and .map

movie_stars = {
  'Jim Carey' => 'Eternal Sunshine of the Spotless Mind',
  'Brad Pitt' => 'Troy',
  'Jennifer Aniston' => 'Meet the Fawkers'
}

movie_stars.each { |name, movie| puts "The actor #{name} peformed in the movie #{movie}" }

dinos = ['T-Rex', 'Stegosaurus', 'Allosaurus']

puts 'First, there were dinos:'
puts dinos

puts 'Then came the meteor!'
dinos.map! do |_target|
  'Extinct.'
end

puts dinos

#----------------------------- Example Array modifiers

numbers = [1, 3, 5, 10, 20]

# puts numbers.delete_if { |number| number <= 10 }

# puts numbers.keep_if { |number| number < 5}

#------------------------------- End Array Examples and begin hash examples

hash_letternum = {
  'a' => 1,
  'b' => 2,
  'c' => 3,
  'd' => 4
}

# puts hash_letternum.fetch('a')

puts hash_letternum.reject { |key, value| value < 3}

#--------------------------------- End Hash Examples
