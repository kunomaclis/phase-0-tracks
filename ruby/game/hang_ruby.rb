# To make word input hidden
require 'io/console'

class Game
  attr_accessor :history, :dashes, :secret_word, :guess_count, :guessed_word

  def initialize(input)
    @secret_word = input.downcase.chars
    @dashes = '_' * @secret_word.length
    @dashes = @dashes.chars
    @history = []
    @guess_count = @secret_word.length
  end

  def compare(user_guess)
    @guessed_word = user_guess.downcase.chars
    # compare letters of guessed word to secret word. and fill in dashes index
    @secret_word.each do |letter|
      if @guessed_word.include?(letter)
        @index_matcher = @secret_word.index(letter)
        @dashes[@index_matcher] = letter
      end
    end
    if @guessed_word == @secret_word
      @guess_count = 0
    else
      @guess_count -= 1
    end

    def duplicate_check(user_guess)
      @history << user_guess
      @history
    end
  end

  puts 'Welcome to Hang_ruby. Please type a secret word for a victim to guess'
  # hidden input for funsies
  initial_input = STDIN.noecho(&:gets).chomp
  game = Game.new(initial_input)
  # loop for guess count
  until game.guess_count.zero?
    puts 'Guess a word for me:'
    user_guess = gets.chomp.to_str
    if game.history.include?(user_guess)
      puts 'Hey, you typed this word already...'
      game.guess_count += 1
    end
    game.compare(user_guess)
    game.duplicate_check(user_guess)
    break if game.guess_count.zero?
    puts "You have #{game.guess_count} guesses left!"
    p game.dashes
  end
  # Win/lose condition. Win condition is unique as there is an edge case with my index/dash. If using @dashes to refer a win will not come up if multiple letters are in a word. my 'hack' is to just use @guessed_word to shoot the count to zero and rely on it to compare it to secret. but still... a definite hack.
  if game.secret_word == game.guessed_word
    puts 'Congratulations! you guessed the word!'
  elsif game.secret_word != game.dashes
    puts "Welp, you didn't get it. the word was #{game.secret_word.join}"
  end
end
