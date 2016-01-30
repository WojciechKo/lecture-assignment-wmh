require_relative 'ui/window.rb'

Dir["model/*.rb"].each {|file| require_relative file }
Dir["model/roomba/*.rb"].each {|file| require_relative file }

room = Room.new 20, 15
position = Position.new room, 10, 10
sensor = Sensor.new position
engine = Engine.new position
cleaner = Cleaner.new position

roomba = Roomba.new sensor, engine, cleaner


window = Window.new room, roomba
window.show
