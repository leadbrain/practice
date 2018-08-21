class Bowling2
  def initialize
    @frame = 0
    @score = 0
    @prev_pin = 0
    @is_spare = false
    @strike_bonus_counter = 0
  end

  def shot(pin)
    @frame += 1
    @score += pin

    add_bonus_score(pin)
    
    check_status(pin)

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

  def add_bonus_score(pin)
    if @is_spare
      @score += pin
      @is_spare = false
    end

    if @strike_bonus_counter > 0
      @score += pin
      @strike_bonus_counter -= 1
    end
  end

  def check_status(pin)
    if pin == 10
      @frame += 1
      @strike_bonus_counter += 2
    elsif (((@frame % 2) == 0) && ((@prev_pin + pin) == 10))
      @is_spare = true
    end
  end
end