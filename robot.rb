require 'singleton'

class Robot
  include Singleton

  attr_accessor :x_position  
end