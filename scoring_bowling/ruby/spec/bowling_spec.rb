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
end