
    puts "what's the hamsters name?"
    hamster_name = gets.chomp
    puts "How loud from 1-10 is this hamster?"
    volume_level = Integer(gets.chomp)
    puts "fur color?"
    fur_color = gets.chomp
    puts "Adoptable? y/n?"
    adoptable = gets.chomp
      if adoptable == "y"
          adoptable == true
      elsif adoptable == "n"
          adoptable == false
        else 
            adoptable == nil
    end 
    puts "how old is hamster?"
    age = Integer(gets.chomp)


