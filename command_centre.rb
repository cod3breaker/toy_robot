require_relative 'commands/command_centre/place_command'
require_relative 'commands/command_centre/all_other_commands'
require_relative 'table'

class CommandCentre
  def execute(command_array)
    if command_array[0].upcase == 'PLACE'
      PlaceCommand.new.run_place_command(command_array)
    elsif Table.new.is_robot_on_table?
      AllOtherCommands.new.other_commands(command_array)
    else
      "Cannot make a move. Robot is not on the table."
    end
  end
end
