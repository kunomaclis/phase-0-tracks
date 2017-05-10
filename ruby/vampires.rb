# Vampire Detector Quiz

puts "Welcome to Werewolf Inc. What's your name?"
name = gets.chomp
vampire = false
if name = 'Drake Cula' || 'Tu Fang'
  vampire = true
end

puts 'How old are you? What year were you born?'
age = Integer(gets.chomp)
age_okay = true if age < 100
age_suspect = true if age > 100

puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
garlic_preference = gets.chomp
garlic_yes = false
garlic_yes = true if garlic_preference == 'yes'

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
if insurance == 'yes'
  yes_insurance = true
elsif insurance == 'no'
  yes_insurance = false
end

puts 'Probably not a vampire' if age_okay && garlic_yes == true || yes_insurance == true
puts 'Probably a vampire' if age_suspect == true || garlic_yes == false || yes_insurance == false
puts 'Almost certainly a vampire' if age_suspect == true && garlic_yes == false && yes_insurance == false
puts 'Definitely a vampire' if vampire == true

