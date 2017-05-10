# Vampire Detector Quiz

puts "Welcome to Werewolf Inc. What's your name?"
name = gets.chomp
vampire = true if name == 'Drake Cula' || 'Tu Fang'

puts 'How old are you? What year were you born?'
age = Integer(gets.chomp)
age_okay = true if age < 100
age_suspect = true if age > 100

puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
garlic_preference = gets.chomp
garlic_yes = true if garlic_preference == "yes"
else garlic_yes = false 

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
if insurance == "yes" 
    yes_insurance = true
elsif insurance == "no"
    yes_insurance = false
else yes_insurance = nil 
end 
