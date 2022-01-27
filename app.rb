require_relative 'ui'
require './database'
require_relative 'book_logic'
require_relative 'album_logic'
require_relative 'genre_logic'
require_relative 'label_logic'

class App
  def initialize()
    @database_object = Database.new
    @database_object.convert_from_json
  end
  include UI
end
