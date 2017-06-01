# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative allows the file to interact with other files in the same directory
# The difference between it and 'require' needs a definite path to the new file.

require_relative 'state_data'

class VirusPredictor
  # Creates instance variables for continued class use from state_data.rb
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Public class method that when called upon uses instance variables from initialization to run private methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # The purpose of private is to prevent any methods below the syntax from being accessed outside of the class

  private

  attr_reader :population_density, :population, :state
  # def population_density
  #   @population_density
  # end

  # Takes instance variables as parameters
  # Uses if condition from highest to lowest population density
  # if population density meets a condition. new variable number of deaths
  # is equal to population multipled times a fraction
  # number_of_deaths decimal is rounded down to nearest integer
  # print a message stating how many deaths will happen

  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = if population_density >= 200
                         (population * 0.4).floor
                       elsif population_density >= 150
                         (population * 0.3).floor
                       elsif population_density >= 100
                         (population * 0.2).floor
                       elsif population_density >= 50
                         (population * 0.1).floor
                       else
                         (population * 0.05).floor
                       end

    print "#{state} will lose #{number_of_deaths} people in this outbreak"
  end

  def speed_of_spread # in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    # A speed variable counter starts at 0.0
    # Create if statement from population density
    # The higher the population density the lower the increase of speed
    # print a message stating how quickly the virus spreads
    speed = 0.0

    speed += if population_density >= 200
               0.5
             elsif population_density >= 150
               1
             elsif population_density >= 100
               1.5
             elsif population_density >= 50
               2
             else
               2.5
             end

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Iteration driver code for release 4

STATE_DATA.each do |state, data|
  # p state
  # p data[:population_density]
  # p data[:population]

  # for each state in state data nested data structure
  # create new instance of virus predictor using state key's population density and population values
  # also run the method virus_effects into this instance
  current_state = VirusPredictor.new(state, data[:population_density], data[:population])
  current_state.virus_effects
end

#=======================================================================
# Reflection Section
