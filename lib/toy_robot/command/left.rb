module ToyRobot
  module Command
    class Left
      def recognize?(command_name)
        command_name == 'LEFT'
      end

      def perform(robot)
        robot.left
      end
    end
  end
end
