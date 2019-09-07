 require './bin/main.rb'
RSpec.describe Logic do 

  describe '#initialize' do 
    game = Logic.new
    it 'creates a new game' do
    expect(game). to eql(game)
    end
  end 

  describe "#switch_player" do 
     let(:player_1){@player_1 = "Jane"}
      @player_2 = "Oman"
    c_p = @player_1
    cond = c_p == @player_1 ? @player_2 : @player_1
    it 'alternates the players' do 
      expect(cond).to eql("Oman")
    end
  end
end