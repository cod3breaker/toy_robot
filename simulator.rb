require_relative 'command_centre'

class Simulator
  @command_centre = CommandCentre.new

  loop do
  print "\n\nDo you want to play with the toy robot? (press y/Y or any other key to quit):> "

  answer = gets.chomp

  if answer.capitalize != 'Y'
    break
  end

  print "Please enter a command: "

  command = gets.chomp

  if command.nil? or command.empty?
    message = "Please enter a command"
  else
    command_array = command.split(/\W+/)
    message = @command_centre.execute(command_array)

    puts message unless message.nil? end
  end
end
