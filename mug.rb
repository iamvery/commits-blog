class Mug
  attr_reader :color, :percent_empty

  def initialize(color=:white)
    @color         = color
    @percent_empty = 100
  end

  def filled?
    percent_empty < 100
  end

  def empty?
    !filled?
  end
end
