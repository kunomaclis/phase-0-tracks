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

puts "Alright, here's all of the data I have so far:"
puts prefs

# Loop if questions missed protocol
updated_info = false

until updated_info

  puts "Would you like to make any changes? If not, type 'none' otherwise type: name, age, kids, or decor theme"
  new_info = gets.chomp
  if new_info == 'name'
    puts 'what is the new name?'
    prefs[:name] = gets.chomp
    updated_info = true
  elsif new_info == 'age'
    puts 'what is the new age?'
    prefs[:age] = gets.chomp
    updated_info = true
  elsif new_info == 'kids'
    puts 'Do you have any children?'
    new_kids = gets.chomp
    if new_kids == 'yes' || new_kids == 'y'
      prefs[:kids] = true
    elsif new_kids == 'no' || new_kids == 'n'
    end
    updated_info = true
  elsif new_info == 'decor theme'
    puts 'What do you want the decor to be like?'
    prefs[:decor_theme] = gets.chomp
    updated_info = true

  elsif new_info == 'none'
    puts 'Roger!'
    updated_info = true
  else
    puts 'what?'
    updated_info = false
  end
end

puts 'Okay, then the updated client info is:'

puts prefs

puts 'Thanks for working with Hendee Design sucka!!!'
