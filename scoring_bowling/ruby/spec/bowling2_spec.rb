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

  context 'all 1' do
    it do
      20.times{ game.shot(1) }
      expect(game.frame).to eq(10)
      expect(game.score).to eq(20)
      expect(game.end?).to eq(true)
    end
  end

  context 'all 1 game 5 frame' do
    it do
      10.times{ game.shot(1) }
      expect(game.frame).to eq(5)
    end

    it do
      10.times{ game.shot(1) }
      expect(game.score).to eq(10)
    end

    it do
      10.times{ game.shot(1) }
      expect(game.end?).to eq(false)
    end
  end

  context 'one spare game' do
    it do
      spare_shot(game)
      game.shot(4)
      17.times{ game.shot(0) }
      expect(game.frame).to eq(10)
      expect(game.score).to eq(18)
      expect(game.end?).to eq(true)
    end
  end

  context 'one spare game 5 frame' do
    it do
      spare_shot(game)
      game.shot(4)
      7.times{ game.shot(0) }
      expect(game.frame).to eq(5)
    end

    it do
      spare_shot(game)
      game.shot(4)
      7.times{ game.shot(0) }
      expect(game.score).to eq(18)
    end

    it do
      spare_shot(game)
      game.shot(4)
      7.times{ game.shot(0) }
      expect(game.end?).to eq(false)
    end
  end

  context 'one strike game' do
    it do
      game.shot(10)
      18.times{ game.shot(0)}
      expect(game.frame).to eq(10)
    end
  end

  def spare_shot(game)
    game.shot(3)
    game.shot(7)
  end
end