RSpec.describe ToyRobot::Direction do
  subject(:direction) { described_class }

  describe '[]' do
    it 'creates a North direction when a :north symbol is passed' do
      north = direction[:north]

      expect(north).to be_a ToyRobot::Direction::North
    end

    it 'returns correct direction after calling #[] with a different symbol' do
      direction[:north]
      west = direction[:west]

      expect(west).to be_a ToyRobot::Direction::West
    end
  end

  describe ToyRobot::Direction::North do
    subject(:north) { described_class.new }

    it 'knows which direction is at 90° left' do
      expect(north.left).to be_a ToyRobot::Direction::West
    end

    it 'knows which direction is at 90° right' do
      expect(north.right).to be_a ToyRobot::Direction::East
    end
  end

  describe ToyRobot::Direction::West  do
    subject(:west) { described_class.new }

    it 'knows which direction is at 90° left' do
      expect(west.left).to be_a ToyRobot::Direction::South
    end

    it 'knows which direction is at 90° right' do
      expect(west.right).to be_a ToyRobot::Direction::North
    end
  end

  describe ToyRobot::Direction::South do
    subject(:south) { described_class.new }

    it 'knows which direction is at 90° left' do
      expect(south.left).to be_a ToyRobot::Direction::East
    end

    it 'knows which direction is at 90° right' do
      expect(south.right).to be_a ToyRobot::Direction::West
    end
  end

  describe ToyRobot::Direction::East do
    subject(:east) { described_class.new }

    it 'knows which direction is at 90° left' do
      expect(east.left).to be_a ToyRobot::Direction::North
    end

    it 'knows which direction is at 90° right' do
      expect(east.right).to be_a ToyRobot::Direction::South
    end
  end
end
