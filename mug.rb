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
end
