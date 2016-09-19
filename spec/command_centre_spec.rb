describe 'Command Centre' do
  before do
    @command_centre = CommandCentre.new
  end

  describe 'place command' do
    it 'issue place command' do
      @place = Place.new
      expect(@command_centre.execute('PLACE')).to receive(@place.execute).with(0,0,'NORTH')
    end
  end
end
