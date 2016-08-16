require 'singleton'

class Robot
  include Singleton

  attr_accessor :x_position
  attr_accessor :y_position  
end