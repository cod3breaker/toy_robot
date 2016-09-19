class Place
  def execute(x,y,facing_direction)
    @table = Table.new
    if (@table.valid_coordinates?(x,y) && @table.valid_direction?(facing_direction))
      Robot.instance.x_position = x
      Robot.instance.y_position = y
      Robot.instance.facing_direction = facing_direction
    end
  end
end
