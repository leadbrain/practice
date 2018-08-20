require './bowling'

describe Bowling do
  let(:bowling) { Bowling.new }
  context 'gutter game' do
    it do
      20.times{ bowling.roll(0) }
      expect(bowling.score).to eq(0)
    end
  end

  context 'all ones' do
    it do
      20.times{ bowling.roll(1) }
      expect(bowling.score).to eq(20)
    end
  end

  context 'one spare' do
    it do
      makeSpare(bowling, 1)
      bowling.roll(3)
      17.times{ bowling.roll(0) }
      expect(bowling.score).to eq(17)
    end
  end

  context 'one strike' do
    it do
      makeStrike(bowling, 1)
      bowling.roll(6)
      17.times{ bowling.roll(0) }
      expect(bowling.score).to eq(22)
    end
  end

  def makeSpare(bowling, count)
    count.times do
      bowling.roll(4)
      bowling.roll(6)
    end
  end

  def makeStrike(bowling, count)
    count.times{ bowling.roll(10) }
  end
end