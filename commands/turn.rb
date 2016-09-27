class Turn
  def execute(turning_direction)
    @@current_facing_direction = Robot.instance.facing_direction

    @@left_turn_directions = {"NORTH" => "WEST" , "SOUTH" => "EAST" , "EAST" => "NORTH" , "WEST" => "SOUTH"}
    @@right_turn_directions = {"NORTH" => "EAST" , "SOUTH" => "WEST" , "EAST" => "SOUTH" , "WEST" => "NORTH"}

    turning_direction == 'LEFT' ? make_left_turn : make_right_turn
  end

  def make_left_turn
    Robot.instance.facing_direction = @@left_turn_directions.fetch(@@current_facing_direction)
    "Robot turned to leftside successfully."
  end

  def make_right_turn
    Robot.instance.facing_direction = @@right_turn_directions.fetch(@@current_facing_direction)
    "Robot turned to rightside successfully."
  end
end
