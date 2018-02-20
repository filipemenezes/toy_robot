module ToyRobot
  module Command
    class NullCommand
      def configure(_ = nil)
        self
      end

      def perform(_)
        nil
      end
    end

    class Registry
      def from(command_string)
        command_name, command_args = command_string.chomp.split ' '

        commands.find(->{ NullCommand.new }) do |command|
          command.recognize? command_name
        end.configure command_args
      end

      def add(command)
        commands << command
      end

      private

      def commands
        @commands ||= []
      end
    end
  end
end
