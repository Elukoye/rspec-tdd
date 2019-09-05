require './lib/board.rb'

RSpec.describe Board do

  let(:board){@board = Board.new}

  describe '#display' do
    output = 1..9
    it 'displays the board ' do
     expect(board.display).to eql(output)
    end   
  end 

  describe '#position_taken?' do 
    let(:board){@board = Board.new}
    it 'checks if there is space on the board' do
      expect(board.position_taken?(1)).to eql(false)
    end
  end

  describe '#win?' do
    let(:board){Board.new} 
    it 'checks for win on board' do
      expect(board.win?).to be false
    end
  end
  
  describe '#full?' do
     let(:board){Board.new}
     it 'checks if board is full' do
      expect(board.full?).to eql(false)
    end
  end 

  describe '#replace_var' do
    let(:board){Board.new}
    it 'replaces position with token on the board' do
      expect(board.replace_var(1,'x')).to eql('x')
    end
  end 
end
  








