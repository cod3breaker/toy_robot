require_relative '../commands/report'

describe 'Report command' do
  describe 'checking report command' do
    it 'shows the Robot current position and facing direction' do
      Robot.instance.x_position = 1
      Robot.instance.y_position = 2
      Robot.instance.facing_direction = 'SOUTH'

      x = Robot.instance.x_position
      y = Robot.instance.y_position
      f = Robot.instance.facing_direction

      expect { Report.new.execute }.to output(puts x).to_stdout
      expect { Report.new.execute }.to output(puts y).to_stdout
      expect { Report.new.execute }.to output(puts f).to_stdout
    end
  end
end
