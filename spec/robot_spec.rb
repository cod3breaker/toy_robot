describe 'Robot' do  

  describe 'track current position' do
    it 'records its x position' do
      expect(Robot.instance).to respond_to(:x_position)
    end  
  end
end