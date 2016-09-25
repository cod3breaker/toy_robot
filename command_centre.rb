class CommandCentre
  def execute(command_array)
    if command_array.empty?
      "No commands can be found"
    elsif command_array[0] == 'PLACE'
      self.place_command(command_array)
    elsif self.is_robot_on_table?
      self.other_commands(command_array)
    end
  end

  def is_robot_on_table?
    Table.new.is_robot_on_table?
  end

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

  def other_commands(command_array)
    case command_array[0]
    when 'MOVE'
      Move.new.execute(Robot.instance.facing_direction)
    when 'LEFT'
      Turn.new.execute('LEFT')
    when 'RIGHT'
      Turn.new.execute('RIGHT')
    when 'REPORT'
      Report.new.execute
    else
      "Not a valid command"
    end
  end
end
