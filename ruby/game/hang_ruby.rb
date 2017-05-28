class Game
  attr_reader :blanks_filled, :guess_count, :is_over

  def initialize(secret_word)
    @secret_word = secret_word.to_str
    @secret_word = @secret_word.split('')
    @guess_count = secret_word.length
    @is_over = false
    @blanks_filled = '_' * @secret_word.length
    @blanks_filled = @blanks_filled.split('')
  end

  def compare(guessed_word)
    @guessed_word = guessed_word.split('')
    @guess_count -= 1
    @guessed_word.each do |letter|
      if @guessed_word[letter] == @secret_word[letter]
        @blanks_filled.map { |_x| x = @guessed_word[letter] }
      else
        puts 'idk'
      end
    end
  end
end

puts "Let's try this out, give me a secret word:"
user_input = gets.chomp
test = Game.new(user_input)
