module ToyRobot
  module Command
    class Right
      def recognize?(command_name)
        command_name == 'RIGHT'
      end

      def perform(robot)
        robot.right
      end
    end
  end
end
