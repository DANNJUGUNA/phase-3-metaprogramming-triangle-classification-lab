class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1,side2, side3)
    @side1= side1
    @side2=side2
    @side3 =side3
  end
  def kind 
    if [side1,side2,side3].min <=0 || (side1+side2<=side3 || side1+side3<=side2|| side2+side3<=side1)
      raise TriangleError
    elsif side1==side2 && side3== side2
      :equilateral
    elsif side1==side2 || side2==side3|| side3==side1 
      :isosceles
    else
        :scalene
    end
  end
    
  class TriangleError < StandardError
    # triangle error code
    
  end

  end