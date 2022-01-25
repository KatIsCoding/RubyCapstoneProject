require './item'

class Book < Item
  def initialize(id: rand(1000), archived:, date:, publisher:, cover_state:)
    super(id, archived, date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?()
    super.can_be_archived? || @cover_state == 'bad'
  end
end
