class Label
  def initialize(title:, color:)
    @id = rand(1000)
    @title = title
    @color = color
    @items = []
  end
  attr_reader :id

  def add_item(item)
    @items.append(item)
    item.add_label(self)
  end
end
