class Database
  def initialize()
    @data = {}
  end
  attr_reader :data

  def add_to_database(item)
    item_name = item.name.to_s
    if @data.keys.include?(item_name)
      @data[item_name].append(item)
    else
      @data[item_name] = [item]
    end
  end

  def get_items(type)
    if @data.keys.include?(type)
      @data[type]
    else
      []
    end
  end
end
