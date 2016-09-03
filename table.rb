class Table
    def valid_coordinates?(x,y)
      (x > 0 && x < 5 && y > 0 && y < 5)
    end

    def valid_direction?(facing_direction)
      %w(NORTH SOUTH EAST WEST).include?(facing_direction)
    end
end