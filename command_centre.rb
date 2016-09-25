class CommandCentre
  def execute(command_array)
    if command_array.empty?
      "No commands can be found"
    elsif command_array[0] == 'PLACE'
      if command_array.length == 3

        x = command_array[1]
        y = command_array[2]
        f = command_array[3]
        Place.new.execute(x,y,f)
      else
        "Invalid number of arguments"
      end
    elsif self.is_robot_on_table?
      if command_array[0] == 'MOVE'
        Move.new.execute(Robot.instance.facing_direction)
      end
    end    
  end

  def is_robot_on_table?
    Table.new.is_robot_on_table?
  end
end
