class Genre
  attr_reader :name

  def initialize(name:)
    @id = rand(1000)
    @name = name
    @items = []
  end

  def add_item(item_obj)
    @items.append(item_obj)
    item.add_genre(self)
  end
end
