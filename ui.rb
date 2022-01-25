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

  def main_menu
    print 'Choose an option\n1- List all books\n2- List all music albums'
    print '3- List all genres'
    puts '4 - List all books'
    puts '5- List all authors'
    puts '6- List all sources'
    puts '7- Add an item'
    puts '8- Quit'
  end

  def handle_input(input)
    case input
    when 1
      puts '1'
    when 8
      nil
    end
  end
end
