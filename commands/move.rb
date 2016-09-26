class Move
  def execute(facing_direction)
    Robot.instance.x_position += 1 if facing_direction == 'EAST'
    Robot.instance.x_position -= 1 if facing_direction == 'WEST'
    Robot.instance.y_position += 1 if facing_direction == 'NORTH'
    Robot.instance.y_position -= 1 if facing_direction == 'SOUTH'
  end
end
