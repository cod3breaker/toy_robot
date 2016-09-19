require_relative '../robot'

describe 'Robot Turn' do
  before do
    @turn = Turn.new
    Robot.instance.x_position = 3
    Robot.instance.y_position = 3
    Robot.instance.facing_direction = 'EAST'
  end

  describe 'Turn Left' do
    it 'makes the Robot turn left' do
      @turn.execute('LEFT')
      expect(Robot.instance.facing_direction).to eq('SOUTH')
    end
  end


end