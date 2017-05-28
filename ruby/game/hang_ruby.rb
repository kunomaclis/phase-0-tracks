class Game
  attr_accessor :guess_count, :is_over, :dashes, :history

  def initialize(word)
    @secret_word = word.to_str
    @secret_word = @secret_word.split('')
    @guess_count = @secret_word.length
    @dashes = '_' * @secret_word.length
    @dashes = @dashes.split('')
  end

  def compare(user_guess)
    @guessed_word = user_guess.split('')
    @secret_word.each do |letter|
      next unless @guessed_word.include?(letter)
      @index_matcher = @secret_word.index(letter)
      @dashes[@index_matcher] = letter
      @guess_count -= 1
    end
    if @dashes == @secret_word
      @guess_count = 0
    else
      p @dashes
      p "You have #{@guess_count} guesses left!"
    end

    def duplicate_check(user_guess)
      @history = []
      @history << user_guess
      @history
    end
  end
end

puts "Let's try this out, give me a secret word:"
user_input = gets.chomp
test = Game.new(user_input)
while @guess_count != 0
  puts 'Guess a word for me:'
  user_guess = gets.chomp.to_str
  test.compare(user_guess)
  test.duplicate_check(user_guess)

  break if @guess_count == 0
  end
if @secret_word == @dashes
  puts 'Congratulations! you guessed the word!'
elsif @secret_word != @dashes
  puts "Welp, you didn't get it. the word was #{@secret_word.join}"
end
