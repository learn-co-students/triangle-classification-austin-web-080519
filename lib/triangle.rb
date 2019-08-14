class Triangle
  # write code here
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    triangle = [@one, @two, @three].sort
    if (triangle[0] + triangle[1] <= triangle[2]) || @one <= 0 || @two <= 0 || @three <= 0
      puts "ERROR!!"
      raise TriangleError
    elsif triangle.sum/3.0 == @one
      :equilateral
    elsif (triangle.count{|tri| tri == @one} == 2) || (triangle.count{|tri| tri == @two} == 2)
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "Its not a triangle"
    end
  end
end
