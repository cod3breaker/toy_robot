class Table
  def valid_coordinates?(x,y)
    (x > 0 && x < 5 && y > 0 && y < 5)
  end

  def valid_direction?(facing_direction)
    %w(NORTH SOUTH EAST WEST).include?(facing_direction)
  end

  def is_movable?(x,y,facing_direction)
    if (x==0 && facing_direction=='WEST') || (x==4 && facing_direction=='EAST') ||
        (y==0 && facing_direction == 'SOUTH') || (y==4 && facing_direction == 'NORTH')
      false
    else
      true
    end
  end

end