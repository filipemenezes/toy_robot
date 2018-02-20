module ToyRobot
  module Command
    class Move
      def configure(_)
        self
      end

      def recognize?(command_name)
        command_name == 'MOVE'
      end

      def perform(robot)
        robot.move
      end
    end
  end
end
