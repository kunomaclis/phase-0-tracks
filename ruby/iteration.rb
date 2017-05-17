# Method that takes a block

def sup_bro
  puts "This is what it's like before a block"
  name = 'Mitch'
  yield(name)
  puts 'This is after a block'
end

sup_bro { |name| puts "Here comes that block with a uniquie person called #{name}" }
