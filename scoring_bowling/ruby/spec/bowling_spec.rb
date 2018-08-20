require './bowling'

describe Bowling do
  context 'gutter game' do
    it do
      bowling = Bowling.new
      20.times{ bowling.roll(0) }
      expect(bowling.score).to eq(0)
    end
  end

  context 'all ones' do
    it do
      bowling = Bowling.new
      20.times{ bowling.roll(1) }
      expect(bowling.score).to eq(20)
    end
  end

  context 'one spare' do
    it do
      bowling = Bowling.new
      bowling.roll(4)
      bowling.roll(6)  # spare
      bowling.roll(3)
      17.times{ bowling.roll(0) }
      expect(bowling.score).to eq(17)
    end
  end

  context 'one strike' do
    it do
      bowling = Bowling.new
      bowling.roll(10) #strike
      bowling.roll(6)
      17.times{ bowling.roll(0) }
      expect(bowling.score).to eq(22)
    end
  end
end