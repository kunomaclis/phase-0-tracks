module Shout
  def self.yell_angrily(words)
    words + '!!!' + ' :('
  end

  def self.yelling_happily(words)
    words + '!!!' + ' :D'
  end
end

puts Shout.yell_angrily("I'm mad")
puts Shout.yelling_happily("I'm happy")

