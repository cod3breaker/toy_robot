
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
    directions = %w(NORTH SOUTH EAST WEST)
    directions.each do |direction|
      it('allows direction - #{direction}') do
        expect(@table.valid_direction?(direction)).to be true
      end
    end
  end

  describe 'invalid direction' do
    it 'not allow direction - NorthEast' do
      expect(@table.valid_direction?('NorthEast')).to be false
    end
  end

  describe 'moving robot' do
    it 'allow to move robot on the table' do
      expect(@table.is_movable?(0,3,'EAST')).to be true
    end

    it 'not allowed to move when x=0, y=2 and facing direction = West' do
      expect(@table.is_movable?(0,2,'WEST')).to be false
    end

    it 'not allowed to move when x=4 and facing direction = EAST' do
      expect(@table.is_movable?(4,2,'EAST')).to be false
    end

    it 'not allowed to move when y=0 and facing direction = South' do
      expect(@table.is_movable?(2,0,'SOUTH')).to be false
    end

    it 'not allowed to move when y is 4 and fading direction is NORTH' do
      expect(@table.is_movable?(2,4,'NORTH')).to be false
    end
  end

  describe 'Robot on Table' do
    it 'check whether the Robot is on the Table' do
      expect(@table.is_robot_on_table?).to be false
    end

    it 'check whether the Robot is not on the Table' do
      Robot.instance.x_position = 0
      Robot.instance.y_position = 0
      Robot.instance.facing_direction = 'NORTH'
      expect(@table.is_robot_on_table?).to be true
    end
  end
end
