
    puts "what's the hamsters name?"
    hamster_name = gets.chomp
    puts "How loud from 1-10 is this hamster?"
    volume_level = Integer(gets.chomp)
    puts "fur color?"
    fur_color = gets.chomp
    puts "Adoptable? y/n?"
    adoptable = gets.chomp
      if adoptable == "y"
          adoption_chance = true
      elsif adoptable == "n"
          adoption_chance = false
        else 
        adoption_chance = nil
    end 
    puts "how old is hamster?"
    age = Integer(gets.chomp)

    print "Awesome, your hamster's name is #{hamster_name}. It's volume from 1-10 is #{volume_level}. It's fur color is #{fur_color}. It is also #{age} years old."

    if adoption_chance == true
        puts " This hamster is ready for adoption!"
    elsif adoption_chance == false 
        puts " This hamster is covered in disease and not ready for adoption"
    elsif adoption_chance == nil
        puts " Is this even a hamster?"
    end 
    
