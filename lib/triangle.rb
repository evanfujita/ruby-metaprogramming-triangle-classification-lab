require 'pry'
class Triangle
  
  attr_accessor :triangle
  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    sides = @sides.sort
    if sides[0] + sides[1] <= sides[2] ||
      sides.any? {|side| side <= 0}
        raise TriangleError
    end
  end

  def kind
    triangle = @sides.uniq.count
    if triangle == 1
      @triangle = :equilateral
    elsif
      triangle == 2
      @triangle = :isosceles
    elsif
      triangle == 3
      @triangle = :scalene
    end
    @triangle
  end

  class TriangleError < StandardError
    def message
      "Not a triangle!"
    end
  end
end
 
a = Triangle.new(5, 5, 5)
b = Triangle.new(5, 7, 5)
c = Triangle.new(3, 4, 5)
#d = Triangle.new(4, 3, 19)
