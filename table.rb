class Table
  def valid_coordinates?(x,y)
    (x >= 0 && x < 5 && y >= 0 && y < 5)
  end

  def valid_direction?(facing_direction)
    %w(NORTH SOUTH EAST WEST).include?(facing_direction)
  end

  def is_movable?(x,y,facing_direction)
    non_movable_combo = [[0,'WEST'],[4,'EAST'],[0,'SOUTH'],[4,'NORTH']]

    non_movable_x = [x,facing_direction]
    non_movable_y = [y,facing_direction]

    (non_movable_combo.include?(non_movable_x) || non_movable_combo.include?(non_movable_y)) ? false : true
  end

  def is_robot_on_table?
    if Robot.instance.x_position
      true
    else
      false
    end
  end
end
