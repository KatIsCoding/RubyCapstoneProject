require 'label'
require 'genre'

def ask_for_album
  puts 'Please, enter the date of publication of the album in the following format: YYYY/MM/DD'
  out[:date] = Date.parse(gets.chomp)
  puts 'Is the album on Spotify? [y/n]'
  out[:on_spotify] = gets.chomp == 'y'
  out
end

def ask_for_label
  puts 'Please enter the label title'
  out[:title] = gets.chomp
  puts 'Please enter the label color'
  out[:color] = gets.chomp
  out
end

def ask_for_genre
  puts 'Please enter the genre name'
  out[:title] = gets.chomp
  out
end