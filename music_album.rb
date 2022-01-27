require_relative 'item'

class MusicAlbum < Item
  attr_reader :on_spotify

  def initialize(date:, on_spotify:)
    super(id: rand(1000), date: date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    @archived = method(:can_be_archived?).super_method.call && @on_spotify
  end
end
