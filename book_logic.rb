require 'date'
require './book'

def ask_for_params()
  out = {}
  puts 'Please, enter the date of publication of the book in the following format: YYYY/MM/DD'
  out[:date] = gets.chomp
  puts 'Please enter the name of the publisher'
  out[:publisher] = gets.chomp
  puts 'Please enter the cover state'
  out[:cover_state] = gets.chomp
  out
end

def create_new_book(database_object)
  args = ask_for_params
  book = Book.new(**args)
  database_object.add_to_database(book)
end
