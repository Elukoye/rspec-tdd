require './lib/board.rb'
# tests for board methods
RSpec.describe Board do

  let(:board){Board.new}

  describe '#display' do
    output = 1..9
    it 'displays the board ' do
     expect(board.display).to eql(output)
    end   
  end 

  describe '#position_taken?' do 
    it 'checks if there is space on the board' do
      expect(board.position_taken?(1)).to eql(false)
    end 

    it 'checks if space on board is taken' do
       board.replace_var(2,"x")
      expect(board.board).to eql([1,2,"x",4,5,6,7,8,9])
    end
  end

  describe '#win?' do
    it 'checks for no win on board' do
      expect(board.win?).to be false
    end

    it 'checks for win on board' do
      board.replace_var(0,"x")
      board.replace_var(1,"x")
      board.replace_var(2,"x")
      expect(board.win?).to eql(true)
    end
  end
  
  describe '#full?' do
     it 'checks if board is not full' do
      expect(board.full?).to eql(false)
    end 

    it 'checks if board is full' do 
      board.replace_var(0,"x")
      board.replace_var(1,"o")
      board.replace_var(2,"x")
      board.replace_var(3,"o")
      board.replace_var(4,"x")
      board.replace_var(5,"o")
      board.replace_var(6,"x")
      board.replace_var(7,"o")
      board.replace_var(8,"x")
      expect(board.board).to eql(["x", "o", "x", "o", "x", "o", "x", "o", "x"])
    end
  end 

  describe '#replace_var' do
    it 'replaces position with token on the board' do
      board.replace_var(0,"o")
      expect(board.board).to eql(["o",2,3,4,5,6,7,8,9])
    end
  end 

  describe "#winner" do
    it 'declares the winner' do
       winner =[board.replace_var(0,"x"),board.replace_var(1,"x"),board.replace_var(2,"x")]
       board.win?
      expect(board.winner).to eql(winner[0])
    end 

    it 'declares if there is no winner ' do 
      winner =[board.replace_var(0,"x"),board.replace_var(1,"o"),board.replace_var(2,"x")]
      board.win?
      expect(board.winner).to be nil
    end
  end

  describe '#rem_nums' do 
    it 'removes players choice form the array' do
       board.replace_var(1,"x")
       expect( board.rem_nums).to eql([1, 3, 4, 5, 6, 7, 8, 9])
    end
  end 
end
  








