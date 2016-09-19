class Turn
  def execute(turning_direction)
    current_facing_direction = Robot.instance.facing_direction

    if turning_direction == 'LEFT'
      Robot.instance.facing_direction = 'SOUTH' if current_facing_direction == 'EAST'
      Robot.instance.facing_direction = 'WEST' if current_facing_direction == 'NORTH'
      Robot.instance.facing_direction = 'EAST' if current_facing_direction == 'SOUTH'
      Robot.instance.facing_direction = 'NORTH' if current_facing_direction == 'WEST'
    elsif turning_direction == 'RIGHT'
      Robot.instance.facing_direction = 'EAST' if current_facing_direction == 'NORTH'
      Robot.instance.facing_direction = 'WEST' if current_facing_direction == 'SOUTH'
      Robot.instance.facing_direction = 'NORTH' if current_facing_direction == 'EAST'
      Robot.instance.facing_direction = 'SOUTH' if current_facing_direction == 'WEST'
    end


  end
end
