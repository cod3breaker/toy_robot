class PlaceCommand
  def place_command(command_array)
    if command_array.length == 3
      x = command_array[1]
      y = command_array[2]
      f = command_array[3]
      Place.new.execute(x,y,f)
    else
      "Invalid number of arguments"
    end
  end
end
