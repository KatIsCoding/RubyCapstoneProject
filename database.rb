require 'json'

class Database
  def initialize()
    @data = {}
  end
  attr_reader :data

  def add_to_database(item)
    item_name = item.class.to_s
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

  def array_conversion
    @data.keys.each do |key|
      @data[key].each_with_index do |item, index|
        @data[key][index] = convert_to_json(item)
      end
    end
  end

  def convert_to_json(item)
    temp_item = {}
    properties = item.instance_variables
    properties.each do |prop| 
      temp_item[prop.to_s.delete('@')] = item.instance_variable_get(prop)
    end
    temp_item
  end

  def save_data()
    array_conversion
    unless File.directory?('./data')
      Dir.mkdir('./data')
    end
    @data.keys.each do |key|
      file = File.open('./data/' + key + '.json', 'w')
      file.write(@data[key].to_json)
      file.close
    end
  end

end
