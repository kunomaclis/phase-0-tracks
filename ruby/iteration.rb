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
dinos.map! do |target|
  'Extinct.'
end

