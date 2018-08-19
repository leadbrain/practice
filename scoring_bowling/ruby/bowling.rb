class Bowling
  def initialize
    @down_pins = []
  end

  def roll(pin)
    @down_pins << pin
  end

  def score
    @down_pins.sum
  end
end