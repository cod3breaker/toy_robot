require 'singleton'

class Robot
  include Singleton

  attr_accessor :x_position
  attr_accessor :y_position  
  attr_accessor :facing_direction
end