class Report
  def execute
    puts Robot.instance.x_position
    puts Robot.instance.y_position
    puts Robot.instance.facing_direction
  end
end
