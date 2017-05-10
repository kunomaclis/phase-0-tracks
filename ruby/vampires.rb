# Vampire Detector Quiz + condition
# The Quiz

puts "Welcome to Werewolf Inc. What's your name?"
name = gets.chomp
vampire = false
vampire = true if name == 'Drake Cula' || name == 'Tu Fang'

puts 'How old are you? What year were you born?'
age = Integer(gets.chomp)
age_okay = false
age_okay = true if age < 100

puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
garlic_preference = gets.chomp
garlic_yes = false
garlic_yes = true if garlic_preference == 'yes' || garlic_preference == 'y'

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
yes_insurance = false
yes_insurance = true if insurance == 'yes' || insurance == 'y'

# The results and sorting algorithms (How can I make the lines shorter?!?!)

if vampire == false && age_okay && garlic_yes && yes_insurance
  puts 'Probably not a vampire'
elsif vampire == false && (age_okay == false && garlic_yes == false && yes_insurance == false)
  puts 'Almost certainly a vampire'
elsif vampire == false && age_okay != true || garlic_yes != true || yes_insurance != true
  puts 'Probably a vampire'
else
  puts 'results inconclusive'
end

# end condition

puts 'Definitely a vampire' if vampire == true
