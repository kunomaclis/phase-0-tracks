# This is a mess, Rspec is a mess and I'm not even sure in hindsight how I would use this in line with the program to make it work. Much more study is needed to even print this out properly

require_relative "hang_ruby"

describe Game do
    let(:game) {Game.new}

    it "initializes with an input" do
        expect(game.initialize("unicorn").to eq "unicorn".chars
        end
    
    it "checks for duplicates" do
    expect(game.duplicate_check("unicorn").to eq "unicorn".chars
    end

    
end



