require_relative 'command_centre'

class Simulator
  @command_centre = CommandCentre.new

  loop do
  print "Please enter a command (press enter to quit): "

  command = gets.chomp

  if command.nil? or command.empty?
    break
  else
    command_array = command.split(/\W+/)
    message = @command_centre.execute(command_array)

    puts message unless message.nil? end
  end
end
