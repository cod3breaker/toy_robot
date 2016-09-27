require_relative '../../table'
require_relative '../move'

class MoveHelper
  def move_robot
    # check if Robot is falling before moving
    x = Robot.instance.x_position
    y = Robot.instance.y_position
    f = Robot.instance.facing_direction

    if Table.new.is_movable?(x,y,f)
      Move.new.execute(Robot.instance.facing_direction)
    else
      "Cannot make a move. Robot about to fall from table."
    end
  end
end
