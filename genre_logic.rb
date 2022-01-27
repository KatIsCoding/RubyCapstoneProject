require_relative 'genre'

def ask_for_params_genre
  out = {}
  puts 'Please enter the genre name'
  out[:name] = gets.chomp
  out
end

def create_new_genre(db)
  params = ask_for_params_genre
  genre = Genre.new(**params)
  db.add_to_database(genre)
end
