class Bowling
  def initialize
    @down_pins = []
  end

  def roll(pin)
    @down_pins << pin
  end

  def score
    i = 0
    total_score = 0
    while i < @down_pins.size
      score = @down_pins[i] + @down_pins[i+ 1]
      score += @down_pins[i] if score == 10
      total_score += score
      i += 2
    end
    total_score
  end
end