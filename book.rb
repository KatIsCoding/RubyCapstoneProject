require 'date'
require './item'

class Book < Item
  def initialize(date:, publisher:, cover_state:)
    super(id: rand(1000), date: date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?()
    @archived = super.can_be_archived? || @cover_state == 'bad'
  end
end
