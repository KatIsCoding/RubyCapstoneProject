require_relative 'ui'
require './database'
require_relative 'book_logic.rb'
require_relative 'album_logic.rb'

class App
  def initialize()
    @database_object = Database.new
  end
  include UI
end
