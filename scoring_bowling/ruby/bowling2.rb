class Bowling2
  def initialize
    @frame = 0
    @score = 0
    @prev_pin = 0
    @is_spare = false
  end

  def shot(pin)
    @frame += 1
    @score += pin
    if @is_spare
      @score += pin
      @is_spare = false
    end
    if pin == 10
      @frame += 1
    end
    @is_spare = (((@frame % 2) == 0) && ((@prev_pin + pin) == 10))
    @prev_pin = pin
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