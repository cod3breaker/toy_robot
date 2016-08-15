
describe 'Table' do
  before do
    @table = Table.new
  end

  describe 'valid coordinates' do
    it 'allows coordinates' do
      @table.valid_coordinates?(0,0).eql?(true)
    end
  end
end