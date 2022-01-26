require_relative 'item'

class MusicAlbum < Item
  attr_reader :on_spotify

  def initialize(date:, on_spotify:)
    super(id: rand(1000), date: date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    @archived = super.can_be_archived? && @on_spotify
  end

  private :can_be_archived?
end
