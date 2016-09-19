require_relative '../robot'

describe 'Robot Turn' do
  before do
    @turn = Turn.new
    Robot.instance.x_position = 3
    Robot.instance.y_position = 3
  end

  describe 'Turn Left' do
    it 'makes the Robot turn left when facing EAST' do
      Robot.instance.facing_direction = 'EAST'
      @turn.execute('LEFT')
      expect(Robot.instance.facing_direction).to eq('SOUTH')
    end

    it 'makes the Robot turn left when facing NORTH' do
      Robot.instance.facing_direction = 'NORTH'
      @turn.execute('LEFT')
      expect(Robot.instance.facing_direction).to eq('WEST')
    end

    it 'makes the Robot turn left when facing SOUTH' do
      Robot.instance.facing_direction = 'SOUTH'
      @turn.execute('LEFT')
      expect(Robot.instance.facing_direction).to eq('EAST')
    end

    it 'makes the Robot turn left when facing WEST' do
      Robot.instance.facing_direction = 'WEST'
      @turn.execute('LEFT')
      expect(Robot.instance.facing_direction).to eq('NORTH')
    end
  end

  describe 'Turn Right' do
    it 'makes the Robot turn right when facing NORTH' do
      Robot.instance.facing_direction = 'NORTH'
      @turn.execute('RIGHT')
      expect(Robot.instance.facing_direction).to eq('EAST')
    end
  end


end
