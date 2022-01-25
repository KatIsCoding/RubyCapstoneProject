require './item'

class Book < Item
  def initialize(archived:, date:, publisher:, cover_state:)
    super(id: rand(1000), archived: archived, date: date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?()
    super.can_be_archived? || @cover_state == 'bad'
  end
end
