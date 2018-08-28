class Bowling2
  def initialize
    @frame = 0
    @score = 0
    @prev_pin = 0
    @spare = false
    @strike = false
    @strike_bonus = false
  end

  def shot(pin)
    @frame += 1
    @score += pin if @frame < 20
    @score += pin if @frame == 20 && @strike == false

    add_bonus_score(pin)

    check_status(pin)

    @prev_pin = pin
  end

  def frame
    [@frame / 2, 10].min
  end

  def score
    @score
  end

  def end?
    (@frame / 2) >= 10
  end

  def add_bonus_score(pin)
    if @spare
      @score += pin
      @spare = false
    end

    if @strike_bonus
      @score += pin
      @strike_bonus = false
    end

    if @strike
      @score += pin
      @strike = false
      @strike_bonus = true
    end

  end

  def check_status(pin)
    if pin == 10
      @frame += 1
      @strike = true if @frame < 21
    elsif ((@frame % 2) == 0) && ((@prev_pin + pin) == 10)
      @spare = true
    end
  end
end
