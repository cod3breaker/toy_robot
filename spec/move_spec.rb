require_relative '../robot'
describe 'Robot move' do
  before do
    @move = Move.new
    Robot.instance.x_position = 3
    Robot.instance.y_position = 3
    Robot.instance.facing_direction = 'EAST'
  end

  describe 'make the Robot' do
    it 'allow to make the robot move East' do
      @move.execute('EAST')
      expect(Robot.instance.x_position).to eq(4)
    end

    it 'allow to make the robot move West' do
      @move.execute('WEST')
      expect(Robot.instance.x_position).to eq(2)
    end

    it 'allow to make the robot move North' do
      @move.execute('NORTH')
      expect(Robot.instance.y_position).to eq(4)
    end

    it 'allow to make the robot move South' do
      @move.execute('SOUTH')
      expect(Robot.instance.y_position).to eq(2)
    end

    it 'allow to make the robot move East with different x position' do
      Robot.instance.x_position = 0
      @move.execute('EAST')
      expect(Robot.instance.x_position).to eq(1)
    end
  end

end