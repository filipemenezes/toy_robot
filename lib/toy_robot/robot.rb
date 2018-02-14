module ToyRobot
  # Public: Used to inform the client that the robot need to be placed before
  # react to other (existent) commands.
  class NeedToBeInPlace < StandardError; end

  # Public: Represents the `Toy Robot` that will actually move throughout the
  # table. It knows how to execute all the specified commands.
  #
  # Examples
  #
  #   robot = Robot.new
  #   robot.place Position.new(Coordinate.new(2, 2), :north)
  #   robot.move
  #   robot.report
  #   # => 2,3,NORTH
  class Robot
    # Public: Used to place the robot on the table in the given position.
    #
    # position - A Position to define the current position an facing direction
    # of a robot.
    #
    # Examples
    #
    #   robot.place Position.new(Coordinate.new(2, 2), :north)
    #
    # Returns nothing.
    def place(position)
      @position = position
      @placed = true
    end

    # Public: Used to show the client where the Toy Robot is right now.
    #
    # Returns a String with the current position.
    def report
      @position.to_s
    end

    # Public: Used to turn the robot 90˚ to the left (facing `Direction`).
    #
    # Examples
    #
    #   robot.place Position.new(Coordinate.new(2, 2), :north)
    #   robot.left
    #   robot.report
    #   # => 2,2,WEST
    #
    # Returns nothing.
    def left
      raise NeedToBeInPlace.new unless @placed
      @position = @position.left
    end

    # Public: Used to turn the robot 90˚ to the right (facing `Direction`).
    #
    # Examples
    #
    #   robot.place Position.new(Coordinate.new(2, 2), :north)
    #   robot.rigth
    #   robot.report
    #   # => 2,2,EAST
    #
    # Returns nothing.
    def right
      raise NeedToBeInPlace.new unless @placed
      @position = @position.right
    end

    # Public: Moves the robot one position in the current facing direction.
    #
    # Examples
    #
    #   robot.place Position.new(Coordinate.new(2, 2), :north)
    #   robot.move
    #   robot.report
    #   # => 2,3,NORTH
    #
    # returns nothing.
    def move
      raise NeedToBeInPlace.new unless @placed
      @position = @position.forward
    end
  end
end
