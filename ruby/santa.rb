class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = %w[Rudolph Dasher Dancer Prancer Vixen Comet Cupid Donner Blitzen]
    @age = 0
    puts 'Initializing Santa instance...'
  end

  def speak
    puts 'Ho, ho, ho! Haaaaaapy holidays!'
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  # getter methods for attributes
  attr_reader :age

  attr_reader :ethnicity

  # setter methods
  def celebrate_birthday=(_integer)
    @age + 1
  end

  def get_mad_at=(reindeer)
    @reindeer_ranking.rotate(reindeer)
  end

  def gender_bender=(new_gender)
    @gender = new_gender
  end
end

# Initial driver code

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("choclate chip")

# santas = []

# example_genders = ['agender', 'female', 'bigender', 'male', 'female', 'gender fluid', 'N/A']
# example_ethnicities = ['black', 'Latino', 'white', 'Japanese-African', 'prefer not to say', 'Mystical Creature (unicorn)', 'N/A']
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i],)
# end

santa = Santa.new('female', 'white')
santa.speak
santa.gender_bender= "male"

