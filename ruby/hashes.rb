# Interior Design Babyyyy
# Prompt user for personal details (name, age, children) and update hash
# Prompt user for personal decor prefs (Decor theme) and update hash
# Allow user to update and make changes to hash data
# Print entire hash at end of program

prefs = {}

puts 'Welcome to Hendee Design. Gimme some deetz.'

puts "First, what's your full name?"
    prefs[:name] = gets.chomp

puts 'Aight, how old are ya?'
    prefs[:age] = gets.chomp.to_i

puts 'fair enough, do you have any kids?'
    kids = gets.chomp
    if kids == 'yes' || kids == 'y'
        prefs[:kids] = true
    elsif kids == 'no' || kids == 'n'
        prefs [:kids] = false
    end

puts 'Finally, what theme do you want your decor to be?'
    prefs[:decor_theme] = gets.chomp



p prefs
