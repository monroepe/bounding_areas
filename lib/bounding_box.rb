require 'pry'

class BoundingBox

  attr_reader :left, :bottom, :width, :height

  def initialize(x, y, width, height)
    @left = x
    @bottom = y
    @width = width
    @height = height
  end


  def right
    left + width
  end

  def top
    bottom + height
  end

  def contains_point?(x, y)
    (left..right).include?(x) && (bottom..top).include?(y)
  end
end


