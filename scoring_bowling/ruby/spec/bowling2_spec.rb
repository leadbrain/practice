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
      strike_shot(game)
      game.shot(1)
      game.shot(2)
      16.times{ game.shot(0)}
      expect(game.frame).to eq(10)
    end

    it do
      strike_shot(game)
      game.shot(1)
      game.shot(2)
      16.times{ game.shot(0)}
      expect(game.score).to eq(16)
    end

    it do
      strike_shot(game)
      game.shot(1)
      game.shot(2)
      16.times{ game.shot(0)}
      expect(game.end?).to eq(true)
    end
  end

  context 'one strike game 5 frame' do
    it do
      strike_shot(game)
      game.shot(1)
      game.shot(2)
      6.times{ game.shot(0)}
      expect(game.frame).to eq(5)
    end

    it do
      strike_shot(game)
      game.shot(1)
      game.shot(2)
      6.times{ game.shot(0)}
      expect(game.score).to eq(16)
    end

    it do
      strike_shot(game)
      game.shot(1)
      game.shot(2)
      6.times{ game.shot(0)}
      expect(game.end?).to eq(false)
    end
  end

  context 'perfect game' do
    it do
      12.times{ strike_shot(game) }
      expect(game.frame).to eq(10)
      expect(game.score).to eq(300)
      expect(game.end?).to eq(true)
    end
  end

  context 'perfect game 5 frame' do
    it do
      5.times{ strike_shot(game) }
      expect(game.frame).to eq(5)
    end

    it do
      5.times{ strike_shot(game) }
      expect(game.score).to eq(120)
    end

    it do
      5.times{ strike_shot(game) }
      expect(game.end?).to eq(false)
    end
  end

  context 'example game' do
    it do
      game.shot(1)
      game.shot(4)
      expect(game.end?).to eq(false)
      expect(game.frame).to eq(1)
      expect(game.score).to eq(5)

      game.shot(4)
      game.shot(5)
      expect(game.end?).to eq(false)
      expect(game.frame).to eq(2)
      expect(game.score).to eq(14)

      game.shot(6)
      game.shot(4)
      expect(game.end?).to eq(false)
      expect(game.frame).to eq(3)
      expect(game.score).to eq(24)

      game.shot(5)
      game.shot(5)
      expect(game.end?).to eq(false)
      expect(game.frame).to eq(4)
      expect(game.score).to eq(39)

      game.shot(10)
      expect(game.end?).to eq(false)
      expect(game.frame).to eq(5)
      expect(game.score).to eq(59)

      game.shot(0)
      game.shot(1)
      expect(game.end?).to eq(false)
      expect(game.frame).to eq(6)
      expect(game.score).to eq(61)

      game.shot(7)
      game.shot(3)
      expect(game.end?).to eq(false)
      expect(game.frame).to eq(7)
      expect(game.score).to eq(71)

      game.shot(6)
      game.shot(4)
      expect(game.end?).to eq(false)
      expect(game.frame).to eq(8)
      expect(game.score).to eq(87)

      game.shot(10)
      expect(game.end?).to eq(false)
      expect(game.frame).to eq(9)
      expect(game.score).to eq(107)

      game.shot(2)
      game.shot(8)
      game.shot(6)
      expect(game.frame).to eq(10)
      expect(game.end?).to eq(true)
      expect(game.score).to eq(133)
    end
  end

  def spare_shot(game)
    game.shot(3)
    game.shot(7)
  end

  def strike_shot(game)
    game.shot(10)
  end
end