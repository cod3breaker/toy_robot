class Turn
  def execute(turning_direction)
    current_facing_direction = Robot.instance.facing_direction

    left_turn_directions = {"NORTH" => "WEST" , "SOUTH" => "EAST" , "EAST" => "SOUTH" , "WEST" => "NORTH"}
    right_turn_directions = {"NORTH" => "EAST" , "SOUTH" => "WEST" , "EAST" => "NORTH" , "WEST" => "SOUTH"}

    Robot.instance.facing_direction = left_turn_directions.fetch(current_facing_direction) if turning_direction == 'LEFT'
    Robot.instance.facing_direction = right_turn_directions.fetch(current_facing_direction) if turning_direction == 'RIGHT'
  end
end
