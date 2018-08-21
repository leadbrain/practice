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
    for frame in (1..10)
      if @down_pins[i] == 10
        score = @down_pins[i] + @down_pins[i+ 1] + @down_pins[i+2]
        i += 1
      else
        score = @down_pins[i] + @down_pins[i+ 1]
        score += @down_pins[i + 2] if score == 10
        i += 2
      end
      total_score += score
    end
    total_score
  end
end