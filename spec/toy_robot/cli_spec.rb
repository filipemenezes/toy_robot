require 'toy_robot/cli'

RSpec.describe ToyRobot::CLI do
  describe '#run' do
    subject(:cli) { described_class.new }

    it 'waits for input from user' do
      expect(cli).to receive(:gets)
      cli.run
    end
  end
end
