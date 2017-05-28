# module Shout
#   def self.yell_angrily(words)
#     words + '!!!' + ' :('
#   end

#   def self.yelling_happily(words)
#     words + '!!!' + ' :D'
#   end
# end

# puts Shout.yell_angrily("I'm mad")
# puts Shout.yelling_happily("I'm happy")

# ------------ MIXIN SHOUT MODULE

module Shout
  def yell_confusedely(words)
    puts words + '???' ' :O'
  end

  def yell_awkwardly(words)
    puts words + '...' 'xDDDDDD'
  end
end

class Protaganist
  include Shout
end

class Sidekick
  include Shout
end

protag = Protaganist.new
protag.yell_confusedely('Where is my wife')
protag.yell_awkwardly('are you my wife')

robin = Sidekick.new
robin.yell_confusedely('Where is the joker')
robin.yell_awkwardly("I'm a real hero")
