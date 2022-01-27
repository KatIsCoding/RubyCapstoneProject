class Genre
  attr_reader :name, :id

  def initialize(name:)
    @id = rand(1000)
    @name = name
    @items = []
  end

  def add_item(item_obj)
    @items.append(item_obj)
    item_obj.add_genre(self)
  end
end
