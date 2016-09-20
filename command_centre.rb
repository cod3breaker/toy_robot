class CommandCentre
  def execute(command_array)
    if command_array[0] == 'PLACE'
      x = command_array[1]
      y = command_array[2]
      facing_direction = command_array[3]
      Place.new.execute(x,y,facing_direction)
    elsif command_array[0] == 'MOVE'
      Move.new.execute(facing_direction)  
    end
  end
end
