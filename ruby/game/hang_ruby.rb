class Game
    def initialize(secret_word)
        @secret_word = secret_word
        @guess_count = secret_word.length
        @is_over = false
        @blanks_filled = "_" * @secret_word.length
        @blanks_filled = @blanks_filled.split("")
    end
    
    def split
        @cups = @cups.split("")
    end

    def compare(guessed_word)
        @guessed_word = guessed_word.split("")
        @guess_count -= 1
    @guessed_word.each do |letter| 
        if @guessed_word[letter] == @secret_word[letter]
        