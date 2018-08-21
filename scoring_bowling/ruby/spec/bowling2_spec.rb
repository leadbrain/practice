require './bowling2'

describe Bowling2 do
  context 'gutter game' do
    let(:game) { Bowling2.new }
    it do
      20.times{ game.shot(0) }
      expect(game.frame).to eq(10)
      expect(game.score).to eq(0)
      expect(game.end?).to eq(true)
    end
  end
end