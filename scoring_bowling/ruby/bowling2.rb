class Bowling2
  def initialize
    @frame = 0
  end

  def shot(pin)
    @frame += 1
  end

  def frame
    @frame / 2
  end

  def score
    0
  end

  def end?
    true
  end
end