# UI
module UI
  def display_ui
    input = ''
    while input != '6'
      main_menu
      input = gets.chomp
      handle_input(input.to_i)
    end
  end

  def print_properties(object)
    properties = object.instance_variables
    properties.each do |prop|
      puts "#{prop.to_s.delete('@').sub('_', ' ').capitalize}: #{object.instance_variable_get(prop)}"
    end
  end

  def list_type(type)
    puts "Printing all the objects of type #{type}"
    @database_object.get_items(type).each_with_index do |item, idx|
      puts '========='
      puts "#{idx + 1}. Object properties: "
      print_properties(item)
      puts '========='
    end
  end

  def create_item
    puts '1- Create book'
    puts '2- Create music album'
    puts '3- Create label'
    puts '4- Create genre'
    create = gets.chomp.to_i
    puts create
    case create
    when 1
      create_new_book(@database_object)
    when 2
      create_new_album(@database_object)
    when 3
      create_new_label(@database_object)
    when 4
      create_new_genre(@database_object)
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
      list_type('Book')
    when 2
      list_type('MusicAlbum')
    when 3
      list_type('Genre')
    when 4
      list_type('Label')
    when 5
      create_item
    when 6
      @database_object.save_data
      puts 'Quitting...'
    end
  end
end
