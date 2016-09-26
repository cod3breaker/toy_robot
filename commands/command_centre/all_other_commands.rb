class AllOtherCommands
  def other_commands(command_array)
    case command_array[0]
    when 'MOVE'
      Move.new.execute(Robot.instance.facing_direction)
    when 'LEFT'
      Turn.new.execute('LEFT')
    when 'RIGHT'
      Turn.new.execute('RIGHT')
    when 'REPORT'
      Report.new.execute
    else
      "Not a valid command"
    end
  end
end
