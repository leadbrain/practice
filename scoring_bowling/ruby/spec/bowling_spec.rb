require './bowling'

describe Bowling do
  context 'gutter game' do
    it do
      bowling = Bowling.new
      20.times{ bowling.roll(0) }
      expect(bowling.score()).to eq(0)
    end
  end
end