class Santa
  attr_reader :age, :ethnicity, :reindeer_ranking

  attr_accessor :gender

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
    puts "That was a good #{cookie} cookie!"
  end

  # setter methods
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at=(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.insert(-1, reindeer_name)
  end
end

# Initial driver code

santa = Santa.new('male', 'white')
santa.speak
santa.eat_milk_and_cookies('choclate chip')

# Array test

santas = []

example_genders = ['agender', 'female', 'bigender', 'male', 'female', 'gender fluid', 'N/A']
example_ethnicities = ['black', 'Latino', 'white', 'Japanese-African', 'prefer not to say', 'Mystical Creature (unicorn)', 'N/A']
example_cookies = ['chocolate chip', 'mint', 'waffle', 'white macadamia', 'oatmeal', 'sugar']
example_genders.length.upto(500) do |_i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

# Take the santa hash and print out random santas!

santas.each do |x|
  puts "This Santa is an #{rand(0 - 140)} year old #{x.ethnicity} #{x.gender}. When given their favorite cookie they had this to say: #{x.eat_milk_and_cookies(example_cookies.sample)}"
  puts '--------------------------'
end
