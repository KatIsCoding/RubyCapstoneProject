require_relative 'ui'
require './database'

class App
  def initialize()
    @database_object = Database.new
  end
  include UI
end
