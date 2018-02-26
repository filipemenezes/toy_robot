module ToyRobot
  module Command
    class Quit
      def recognize?(command_name)
        command_name.downcase == 'quit' ||
          command_name.downcase == '\q'
      end

      def perform(_)
        exit 0
      end
    end
  end
end
