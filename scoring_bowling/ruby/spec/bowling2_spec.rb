require './bowling2'

describe Bowling2 do
  let(:game) { Bowling2.new }
  context 'gutter game' do
    it do
      20.times{ game.shot(0) }
      expect(game.frame).to eq(10)
      expect(game.score).to eq(0)
      expect(game.end?).to eq(true)
    end
  end

  context 'gutter game 5 frame' do
    it do
      10.times{ game.shot(0) }
      expect(game.frame).to eq(5)
    end

    it do
      10.times{ game.shot(0) }
      expect(game.score).to eq(0)
    end

    it do
      10.times{ game.shot(0) }
      expect(game.end?).to eq(false)
    end
  end
end