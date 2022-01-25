require 'date'
require './book.rb'

def initialize(archived: false, date:, publisher:, cover_state:)
  super(id: rand(1000), archived: archived, date: date)
  @publisher = publisher
  @cover_state = cover_state
end


def ask_for_params()
  out = {}
  puts "Please, enter the date of publication of the book in the following format: YYYY/MM/DD"
  out[:date] = Date.parse(gets.chomp)
  puts "Please enter the name of the publisher"
  out[:publisher] = gets.chomp
  puts "Please enter the cover state"
  out[:cover_state] = gets.chomp
  return out
end

def create_new_book(database_object)
  args = ask_for_params()
  book = Book.new(**args)
  database_object.add_to_database(book)
  
end