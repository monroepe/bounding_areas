require_relative 'bounding_box'

class BoundingArea

  attr_reader :boxes

  def initialize(boxes)
    @boxes = boxes
  end

  def contains_point?(x, y)
    boxes.each do |box|
      if box.contains_point?(x, y)
        return true
      end
    end
    false
  end

end
