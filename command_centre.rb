require_relative 'commands/command_centre/place_command'
require_relative 'commands/command_centre/all_other_commands'
require_relative 'table'

class CommandCentre
  def execute(command_array)
    if command_array[0] == 'PLACE'
      PlaceCommand.new.run_place_command(command_array)
    elsif Table.new.is_robot_on_table?
      AllOtherCommands.new.other_commands(command_array)
    end
  end
end
