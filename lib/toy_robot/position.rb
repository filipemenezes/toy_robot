require 'forwardable'

module ToyRobot
  class Position
    extend Forwardable
    def_delegators :@coordinate, :x, :y

    def initialize(coordinate, direction)
      @coordinate = coordinate
      @direction = ToyRobot::Direction[direction.to_sym]
    end

    def forward
      Position.new @direction.forward(@coordinate), @direction
    end
  end
end
