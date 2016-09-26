class Report
  def execute
    puts 'X - Position: #{Robot.instance.x_position}'
    puts 'Y - Position: #{Robot.instance.y_position}'
    puts 'Direction   : #{Robot.instance.facing_direction}'
  end
end
