module ToyRobot
  class CLI
    def initialize(registry: nil)
      @robot = ToyRobot::Robot.new
      @registry = registry.nil? ? build_registry : registry
    end

    def run
      while command = gets
        command = @registry.from command
        command.perform @robot
      end
    end

    def build_registry
      registry = ToyRobot::Command::Registry.new
      registry.add ToyRobot::Command::Quit.new
      registry
    end
  end
end
