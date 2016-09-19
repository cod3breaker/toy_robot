require_relative '../robot'
require_relative '../table'
describe 'Place command' do
  before do
    @place = Place.new
    @table = Table.new
  end

  describe 'calling place command' do
    it 'with invalid arguments' do
      @place.execute(5,5,'INVALID')
      expect(@table.is_robot_on_table?).to be false
    end

    it 'with correct arguments' do
      @place.execute(0,0,'NORTH')
      #expect(Robot.instance.x_position).to eq(0)
      expect(@table.is_robot_on_table?).to be true
    end
  end
end
