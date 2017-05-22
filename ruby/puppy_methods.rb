class Puppy
  def initialize
    puts 'initializing new puppy instance...'
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(n)
    bark_count = n
    until bark_count.zero?
      puts 'woof'
      bark_count -= 1
    end
  end

  def roll_over
    puts '*rolls over*'
  end

  def dog_year(age)
    puts age * 7
  end

  def shake
    puts '*extends paw*'
  end
end

tucker = Puppy.new
tucker.fetch('kong')
tucker.speak(3)
tucker.roll_over
tucker.dog_year(3)
tucker.shake
