require_relative '../move'
require_relative '../turn'
require_relative '../report'
require_relative '../../table'

class AllOtherCommands
  def other_commands(command_array)
    case command_array[0].upcase
    when 'MOVE'
      # check if Robot is falling before moving
      x = Robot.instance.x_position
      y = Robot.instance.y_position
      f = Robot.instance.facing_direction

      if Table.new.is_movable?(x,y,f)
        Move.new.execute(Robot.instance.facing_direction)
      else
        "Cannot make a move. Robot about to fall the table."
      end
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
