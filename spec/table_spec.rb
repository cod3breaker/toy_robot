
describe 'Table' do
  before do
    @table = Table.new
  end

  describe 'valid coordinates' do
    it 'allows coordinates' do
      @table.valid_coordinates?(0,0).eql?(true)
    end

    it 'should not allow x < 0 coordinates' do
      @table.valid_coordinates?(-1,0).eql?(false)
    end

    it 'should not allow x > 4 coordinates' do
      @table.valid_coordinates?(5,0).eql?(false)
    end

    it 'should not allow y < 0 coordinates' do
      @table.valid_coordinates?(0,-1).eql?(false)
    end

    it 'should not allow y > 4 coordinates' do
      @table.valid_coordinates?(0,5).eql?(false)
    end     
  end

  describe 'valid direction' do
    directions = ['NORTH', 'SOUTH', 'EAST', 'WEST']
    directions.each do |direction|
      it 'allows direction - #{direction}' do
        expect(@table.valid_direction?(direction)).to be true
      end
    end
  end  
end