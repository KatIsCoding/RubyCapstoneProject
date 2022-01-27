require 'date'
require './book'
require './label'

def ask_for_params()
  out = {book: {}, label: {}}
  puts 'Please, enter the date of publication of the book in the following format: YYYY/MM/DD'
  out[:book][:date] = gets.chomp
  puts 'Please enter the name of the publisher'
  out[:book][:publisher] = gets.chomp
  puts 'Please enter the cover state'
  out[:book][:cover_state] = gets.chomp
  puts 'Please enter the label title'
  out[:label][:title] = gets.chomp
  puts 'Please enter the label color'
  out[:label][:color] = gets.chomp
  out
end

def create_new_book(database_object)
  args = ask_for_params
  book = Book.new(**args[:book])
  label = Label.new(**args[:label])
  label.add_item(book)
  database_object.add_to_database(book)
  database_object.add_to_database(label)
end
