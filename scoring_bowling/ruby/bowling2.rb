class Bowling2
  def initialize
    @frame = 0
    @score = 0
  end

  def shot(pin)
    @frame += 1
    @score += pin
  end

  def frame
    @frame / 2
  end

  def score
    @score
  end

  def end?
    (@frame / 2) == 10
  end
end