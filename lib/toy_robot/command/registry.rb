module ToyRobot
  module Command
    class NullCommand
      def configure(_ = nil)
        self
      end

      def perform(_)
      end
    end

    class Registry
      def initialize
        @commands = [
          ToyRobot::Command::Place.new,
          ToyRobot::Command::Report.new
        ]
      end

      def from(command_string)
        command_name, command_args = command_string.chomp.split ' '

        @commands.find(->{ NullCommand.new }) do |command|
          command.recognize? command_name
        end.configure command_args
      end

      def add(command)
        @commands << command
      end
    end
  end
end
