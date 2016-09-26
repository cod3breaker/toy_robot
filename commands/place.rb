require_relative '../robot'
class Place
  def execute(x,y,facing_direction)
    @table = Table.new
    if (@table.valid_coordinates?(x.to_i,y.to_i) && @table.valid_direction?(facing_direction))
      Robot.instance.x_position = x.to_i
      Robot.instance.y_position = y.to_i
      Robot.instance.facing_direction = facing_direction
    end
  end
end
