module ToyRobot
  module Command
    class Right
      def configure(_)
        self
      end

      def recognize?(command_name)
        command_name == 'RIGHT'
      end

      def perform(robot)
        robot.right
      end
    end
  end
end
