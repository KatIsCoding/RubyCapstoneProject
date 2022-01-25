require_relative 'ui'
require './database'
require './book_logic.rb'

class App
  def initialize()
    @database_object = Database.new
  end
  include UI
end
