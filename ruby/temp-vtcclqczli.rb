# Vampire Detector Quiz

puts "Welcome to Werewolf Inc. What's your name?"
name = gets.chomp
vampire = false
vampire = true if name == 'Drake Cula' || name == 'Tu Fang'

puts 'How old are you? What year were you born?'
age = Integer(gets.chomp)
age_okay = true if age < 100
age_suspect = true if age > 100

puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
garlic_preference = gets.chomp
garlic_yes = false
garlic_yes = true if garlic_preference == 'yes' || garlic_preference == 'y'

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
if insurance == 'yes' || insurance == 'y'
  yes_insurance = true
elsif insurance == 'no' || insurance == 'n'
  yes_insurance = false
end

if age_okay == true && garlic_yes == true || yes_insurance == true
  puts 'Probably not a vampire'
elsif age_suspect == true || garlic_yes == false || yes_insurance == false
  puts 'Probably a vampire'
elsif age_suspect == true && garlic_yes == false && yes_insurance == false
  puts 'Almost certainly a vampire'
elsif vampire == true
  puts 'Definitely a vampire'
end
