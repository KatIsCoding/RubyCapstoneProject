require 'date'
require 'music_album'
require 'misc_logic'

def ask_for_params_album()
  out = {album: {}, label: {}, genre: {}}
  out[album] = ask_for_album
  out[label] = ask_for_label
  out[genre] = ask_for_genre
  out
end

def create_new_album(database_object)
  args = ask_for_params_album
  album = MusicAlbum.new(**args[:album])
  label = Label.new(**args[:label])
  genre = Genre.new(**args[:genre])
  label.add_item(album)
  genre.add_item(album)
  database_object.add_to_database(album)
  database_object.add_to_database(label)
  database_object.add_to_database(genre)
end
