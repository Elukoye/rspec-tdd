require './lib/board.rb'

RSpec.describe Board do
  describe '#initialize' do

    let(:board){(1..9).to_a}
    it 'creates a new board with an array of 1-9 elements ' do
     expect(board).to eql([1,2,3,4,5,6,7,8,9])
    end  
  end 

  
  describe '#winner' do

    let(:winner){@winner = nil}
    it 'sets winner value to nil' do 
      expect(winner).to eql(nil)
    end
  end

describe '#win?' do

  let(:win_combination){win_combination = [[0,1,2],[3,4,5],[6,7,8]] }
  it 'checks win combination on board' do 
    expect(win_combination).to eql([[0,1,2],[3,4,5],[6,7,8]])
  end
end 

describe '#full?' do 

  let(:board){ @board = ['x','o','x','o','x','o','x','o','x']}
  it 'checks if all board positions are taken' do 
    expect(board).to eql( ['x','o','x','o','x','o','x','o','x'])
  end
end 

describe '#position_taken?' do
   position = 0
   board = ['x',2,3,4,5,6,7,8,9]
   
  let (:board){board[position] == 'x'} 
  it 'checks whether board position is occupied' do
    expect(board[position]).to eql('x')
  end
end


end 




