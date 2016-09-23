class CommandCentre
  def execute(command_array)
    if command_array.empty?
      "No commands can be found"
    elsif command_array.length == 3
      if command_array[0] == 'PLACE'

        x = command_array[1]
        y = command_array[2]
        f = command_array[3]
        Place.new.execute(x,y,f)
      else
        # other commands
      end
    else
      "Invalid number of arguments"
    end
  end
end
