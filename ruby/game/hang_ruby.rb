class Game
  attr_reader :blanks_filled, :guess_count, :is_over

  def initialize(secret_word)
    @secret_word = secret_word.to_str
    @secret_word = @secret_word.split('')
    @guess_count = secret_word.length
    @is_over = false
    @dashes = '_' * @secret_word.length
    @dashes = @dashes.split('')
  end

  def compare(user_guess)
    @guessed_word = user_guess.split('')
    @guess_count -= 1
    @secret_word.each do |letter|
      if @guessed_word.include?(letter)
        @index_matcher = @guessed_word.index(letter)
        @dashes[@index_matcher] = letter
      end
    end
    p @dashes
  end
end

puts "Let's try this out, give me a secret word:"
user_input = gets.chomp
test = Game.new(user_input)

puts 'Guess a word for me:'
user_guess = gets.chomp.to_str
test.compare(user_guess)
