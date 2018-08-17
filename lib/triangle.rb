class Triangle
  def initialize(length1, length2, length3)
    @length1 = length1.to_i
    @length2 = length2.to_i
    @length3 = length3.to_i
  end

  def type
    if (@length1 + @length2 <= @length3) | (@length1 + @length3 <= @length2) | (@length2 + @length3 <= @length1)
      'NOT a triangle'
    else
      if (@length1 == @length2) & (@length2 == @length3)
        'equilateral'
      elsif (@length1 == @length2) | (@length1 == @length3) | (@length2 == @length3)
        'isosceles'
      else
        'scalene'
      end
    end
  end
end
