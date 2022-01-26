require_relative '../music_album'
require 'date'

describe MusicAlbum do
  before(:each) do
    @obj = MusicAlbum.new date: '1999/01/01', on_spotify: true
  end

  context 'Music Album instantiation' do
    it '#new' do
      expect(@obj).to be_a MusicAlbum
    end
  end

  context 'Test Can_be_archived? Method' do
    it 'Execute Method' do
      @obj.can_be_archived?
      expect(@obj.instance_variable_get('@archived')).to be(true)
    end
  end
end
