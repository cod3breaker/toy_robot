require_relative '../place'

class PlaceCommand
  def run_place_command(command_array)
    if command_array.length == 4
      x = command_array[1]
      y = command_array[2]
      f = command_array[3].upcase
      Place.new.execute(x,y,f) ? "Robot placed on the table!" : "Invalid Command!"
    else
      "Invalid number of arguments"
    end
  end
end
