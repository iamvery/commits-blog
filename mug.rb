class Mug
  attr_reader :color, :content, :percent_empty

  def initialize(color=:white)
    @color         = color
    @percent_empty = 100
  end

  def fill(liquid=:coffee)
    @content       = liquid
    @percent_empty = 0
  end

  def filled?
    percent_empty < 100
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
    @percent_empty += percent
  end
end
