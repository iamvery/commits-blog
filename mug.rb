class Mug
  attr_reader :color, :content, :percent_filled

  def initialize(color=:white)
    @color          = color
    @percent_filled = 0
  end

  def fill(liquid=:coffee)
    @content        = liquid
    @percent_filled = 100
  end

  def filled?
    percent_filled > 0
  end

  def empty?
    !filled?
  end

  def sip
    drink(1)
  end

  def gulp
    drink(10)
  end

  private

  def drink(percent)
    raise "You're all out of #{content}" if empty?
    @percent_filled -= percent
  end
end
