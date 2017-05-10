# Vampire Detector Quiz

# release 4 loop
puts 'How many are we interviewing?'
applicants = Integer(gets.chomp)

until applicants.zero?

  # The Quiz
  puts "Welcome to Werewolf Inc. What's your name?"
  name = gets.chomp
  vampire = false
  vampire = true if name == 'Drake Cula' || name == 'Tu Fang'

  puts 'How old are you?'
  age_range = Integer(gets.chomp)
  puts 'What year were you born?'
  year_number = Integer(gets.chomp)
  age = false
  age = true if age_range + year_number == 2017

  puts 'Our company cafeteria serves garlic bread. Should we order some for you?'
  garlic_preference = gets.chomp
  garlic = false
  garlic = true if garlic_preference == 'yes' || garlic_preference == 'y'

  puts "Would you like to enroll in the company's health insurance?"
  insurance_status = gets.chomp
  insurance = false
  insurance = true if insurance_status == 'yes' || insurance_status == 'y'

  # Allergy loop
  puts "Now to ask if you're allergic to anything"
  allergies = ''
  while allergies != 'done'
    puts "Any you can think of? Let me know when you're done!"
    allergies = gets.chomp
    vampire = true if allergies == 'sunshine'
  end

  # The results and sorting algorithms (How can I make the lines shorter?!?!)

  if vampire == true
    puts 'Definitely a vampire'
  elsif vampire == false && age && garlic && insurance
    puts 'Probably not a vampire'
  elsif vampire == false && (age == false && garlic == false && insurance == false)
    puts 'Almost certainly a vampire'
  elsif vampire == false && age != true || garlic != true || insurance != true
    puts 'Probably a vampire'
  else
    puts 'results inconclusive'
  end

  applicants -= 1

end

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends"

# end condition
