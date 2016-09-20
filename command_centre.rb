class CommandCentre
  def execute(command_array)
    x = command_array[1]
    y = command_array[2]
    facing_direction = command_array[3]
    Place.new.execute(x,y,facing_direction)
  end
end
