class Game
  attr_accessor :history, :dashes, :secret_word, :guess_count

  def initialize(input)
    @secret_word = input.split('')
    @dashes = '_' * @secret_word.length
    @dashes = @dashes.split('')
    @history = []
    @guess_count = @secret_word.length
  end

  def compare(user_guess)
    @guessed_word = user_guess.split('')
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
    puts "You have #{guess_count} guesses left!"
    p @dashes

    def duplicate_check(user_guess)
      @history << user_guess
      @history
    end
  end

  puts "Let's try this out, give me a secret word:"
  initial_input = gets.chomp
  test = Game.new(initial_input)

  until test.guess_count.zero?
    puts 'Guess a word for me:'
    user_guess = gets.chomp.to_str
    if test.history.include?(user_guess)
      puts 'Hey, you typed this word already...'
      test.guess_count += 1
    end
    test.compare(user_guess)
    test.duplicate_check(user_guess)
    break if test.guess_count.zero?
  end
  if test.secret_word == test.dashes
    puts 'Congratulations! you guessed the word!'
  elsif test.secret_word != test.dashes
    puts "Welp, you didn't get it. the word was #{test.secret_word.join}"
  end
end
