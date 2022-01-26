require_relative '../genre'
require_relative '../music_album'

describe Genre do
  before(:each) do
    @obj = Genre.new(name: 'Cool name')
  end

  context 'Label instantiation' do
    it '#new' do
      expect(@obj).to be_a Genre
    end
  end

  context 'Test add_item Method' do
    it 'Execute Method' do
      mock = MusicAlbum.new(date: '2020/01/01', on_spotify: true)
      @obj.add_item(mock)
      expect(@obj.instance_variable_get('@items').length).to be(1)
      expect(mock.instance_variable_get('@genre')).to be(@obj)
    end
  end
end
