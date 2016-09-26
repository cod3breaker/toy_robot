require_relative '../commands/place'
require_relative '../table'

describe 'Command Centre' do
  before do
    @command_centre = CommandCentre.new
    @place = Place.new
  end

  describe 'place command' do
    it 'checks whether the command is PLACE' do
      command_array = ['PLACE',0,0,'NORTH']
      expect(@command_centre.execute(command_array)).eql?('NORTH')
    end

    it 'calls Place-execute if the command is PLACE' do
      command_array = ['PLACE',0,0,'NORTH']
      x = command_array[1]
      y = command_array[2]
      f = command_array[3]

      place = spy('place')
      place.execute(x,y,f)
      expect(place).to have_received(:execute)
      @command_centre.execute(command_array)
    end

    it 'checks the validity of the array' do
      command_array = ['PLACE']
      x = command_array[1]
      y = command_array[2]
      f = command_array[3]
      place = spy('place')
      place.execute(x,y,f)
      #allow(@place).to receive(:execute).with(x,y,f)
      #@place.execute(x,y,f)
      expect(place).to have_received(:execute)
      @command_centre.execute(command_array)
    end
  end

  describe 'Other commands' do
    it 'checks whether the robot on the table before issuing other commands' do
      table = spy('table')
      table.is_robot_on_table?
      expect(table).to have_received(:is_robot_on_table?)
      Table.new.is_robot_on_table?
    end

    it 'calls Move.execute if the Robot is on the table' do
      Robot.instance.x_position = 0
      Robot.instance.y_position = 0
      Robot.instance.facing_direction = 'NORTH'

      command_array = ['MOVE']
      @command_centre.execute(command_array)

      expect(Robot.instance.y_position).to eq(1)
    end

    it 'calls Turn.execute for LEFT command if the Robot is on the table' do
      Robot.instance.x_position = 0
      Robot.instance.y_position = 0
      Robot.instance.facing_direction = 'NORTH'

      command_array = ['LEFT']
      @command_centre.execute(command_array)
      expect(Robot.instance.facing_direction).to eq('WEST')
    end

    it 'calls Turn.execute for RIGHT command if the Robot is on the table' do
      Robot.instance.x_position = 0
      Robot.instance.y_position = 0
      Robot.instance.facing_direction = 'NORTH'

      command_array = ['RIGHT']
      @command_centre.execute(command_array)
      expect(Robot.instance.facing_direction).to eq('EAST')
    end

    it 'calls Report.execute if the Robot is on the table' do
      Robot.instance.x_position = 0
      Robot.instance.y_position = 0
      Robot.instance.facing_direction = 'NORTH'

      command_array = ['REPORT']

      report = spy('report')
      report.execute
      expect(report).to have_received(:execute)
      @command_centre.execute(command_array)
    end
  end
end
