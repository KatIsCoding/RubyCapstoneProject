require_relative 'item'

class MusicAlbum < Item
  def initialize(id, archived, date, on_spotify)
    super(id, archived, date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    if super.can_be_archived? && @on_spotify
      true
    else
      false
    end
  end
end
