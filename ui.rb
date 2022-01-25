# UI
module UI
  def display_ui
    input = ''
    while input != '8'
      main_menu
      input = gets.chomp
      handle_input(input.to_i)
    end
  end

  def print_properties(object)
    properties = object.instance_variables
    properties.each do |prop|
      puts prop.to_s.delete("@").sub('_',' ').capitalize + ": " + object.instance_variable_get(prop).to_s
    end
  end

  def list_type(type)
    puts "Printing all the objects of type " + type 
    @database_object.get_items(type).each_with_index do |item, idx|
      puts "========="
      puts (idx + 1).to_s + ". Object properties: "
      print_properties(item)
      puts "========="
    end
  end

  def main_menu
    puts 'Choose an option'
    puts '1- List all books'
    puts '2- List all music albums'
    puts '3- List all genres'
    puts '4- List all labels'
    puts '5- Add an item'
    puts '6- Quit'
  end

  def handle_input(input)
    case input
    when 1
      list_type("Book")
    when 8
      nil
    end
  end
end
