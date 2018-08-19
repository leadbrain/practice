class Bowling
  def initialize
    @down_pins = []
  end

  def roll(pin)
    @down_pins << pin
  end

  def score
    @down_pins
      .each_slice(2)
      .map do |pins|
        score = pins.first + pins.last
        score += pins.first if score == 10
        score
      end
      .sum
  end
end