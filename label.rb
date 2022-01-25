class Label
  def initialize(title:, color:)
    @id = rand(1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item_obj)
    @items.append(item_obj)
    item_obj.add_label(self)
  end
end
