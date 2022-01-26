require 'date'
require './music_album'

def ask_for_params_album()
  out = {}
  puts 'Please, enter the date of publication of the album in the following format: YYYY/MM/DD'
  out[:date] = Date.parse(gets.chomp)
  puts 'Is the album on Spotify?'
  out[:on_spotify] = gets.chomp == 'y'
  out
end

def create_new_album(database_object)
  args = ask_for_params_album
  album = MusicAlbum.new(**args)
  database_object.add_to_database(album)
end
