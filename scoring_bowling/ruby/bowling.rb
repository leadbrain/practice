class Bowling
  def initialize
    @down_pins = 0
  end

  def roll(pin)
    @down_pins += pin
  end

  def score
    @down_pins
  end
end