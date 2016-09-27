require_relative '../turn'
require_relative '../report'
require_relative 'move_helper'


class AllOtherCommands
  def other_commands(command_array)
    case command_array[0].upcase
    when 'MOVE'
      MoveHelper.new.move_robot
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
