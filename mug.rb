class Mug
  attr_reader :color, :percent_empty

  def initialize(color=:white)
    @color = color
  end
end
