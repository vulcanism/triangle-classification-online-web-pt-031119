class Triangle
  def initialize(side1, side2, side3)
    @side_1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  class TriangleError < StandardError
    
  end
  
  def kind
    if (side1 == side2 && side2 == side3)
      :equilateral
    elsif (side1 == side2 || side2 = side3 || side1 == side3)
      :isosceles
    elsif (side1 != side2 && side2 != side3 && side1 != side3)
      :scalene
    elsif (side1 <= 0 || side2 <= 0 || side3 <= 0)
      raise TriangleError
    elsif (side1 + side2 <= side3 || side2 + side3 <= side1 || side1 + side3 <= side2)
      raise TriangleError
    end
    
  end
  
end
