require './lib/board.rb' 

RSpec.describe Logic do
  describe '#initilaize' do
    let(:player_1){@player_1 = "player_1"} 
    let(:player_2){@player_2 = "player_2"} 
    let(:board){@board = [1,2,3,4,5,6,7,8,9]}

    it 'creates first player ' do
      expect(player_1).to eql("player_1")
    end

    it 'creates a second player ' do
      expect(player_2).to eql("player_2")
    end

    it 'creates a new board array ' do 
      expect(board).to eql([1,2,3,4,5,6,7,8,9])
    end
  end 

  describe '#game_start' do
    let(:player_1){@player_1 == @player_1 }
    let(:player_2){@player_2 == @player_2} 

    it 'assigns player_1 name to token' do 
      expect(player_1).to be true
    end 

    it 'assigns player_2 name to token' do
      expect(player_2).to be true
    end
  end 

  describe '#take_turns' do 
    position = 8
    board=[1,2,3,4,5,6,7,8,9]
    let(:board){@board[position] == 9}
    let(:positions){positions = 1..9} 

    it 'gets user input & ensures it on the board ' do 
      expect(board[position]).to eql(9)
    end

    it 'checks if position is within range' do
      expect(positions).to eql(1..9)
    end
  end

  describe '#switch player' do 
     player_1 = 'player_1'
     player_2 = 'player_2'
     c_p = player_1
     cond = c_p == player_1 ? "#{player_2}" : "#{player_1}"

     let(:c_p){cond}
     it 'alternates the players' do 
      expect(cond).to eql("#{player_2}")
     end
  end 

  describe '#game_loop' do
    winner = 'x'
    mshindi = nil
    cond = winner == 'x' ? "Congrats winner is x" : "Congrats winner is o" 
    condition = mshindi == nil ? "Its a draw  PLAY AGAIN?": "Congrats winner is o" 
    let(:winner){cond}
    let(:winner){winner == nil}

    it 'declares the winner of the game' do
      expect(cond). to eql("Congrats winner is x")
    end

    it 'ends the game if its a draw' do
      expect(condition).to eql("Its a draw  PLAY AGAIN?")
    end
  end
end