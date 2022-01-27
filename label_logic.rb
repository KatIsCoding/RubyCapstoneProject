require_relative 'label'

def ask_for_params_label()
  out = {}
  puts 'Please enter the label title'
  out[:title] = gets.chomp
  puts 'Please enter the label color'
  out[:color] = gets.chomp
  out
end

def create_new_label(db)
  params = ask_for_params_label
  label = Label.new(**params)
  db.add_to_database(label)
end
