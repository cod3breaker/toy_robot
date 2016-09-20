require_relative '../commands/place'
require_relative '../table'

describe 'Command Centre' do
  before do
    @command_centre = CommandCentre.new
    @place = Place.new
  end

  describe 'command' do
    it 'issue place command' do
      command_array = ['PLACE',0,0,'WEST']
      @command_centre.execute(command_array)
      expect(Table.new.is_robot_on_table?).to be true
    end

    it 'issue move command only if robot on the table' do
      command_array = ['MOVE']
      @command_centre.execute(command_array)
      expect(Move.new.execute('WEST')).to be nil
    end
  end
end
