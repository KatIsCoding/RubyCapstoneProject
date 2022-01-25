require_relative 'ui'
require './database.rb'

class App
  database_object = Database.new()
  include UI
end
