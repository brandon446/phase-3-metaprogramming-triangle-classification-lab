class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    validate_triangle
  end

  def kind
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles

    else
      :scalene
    end
end


def validate_triangle
  real_triangle = [(a+b>c),(a+c>b),(b+c>a)]
  [a,b,c].each do |triangle|
    real_triangle << false if triangle <= 0
    raise TriangleError if real_triangle.include?(false)
  end
end



  class TriangleError < StandardError
  end



end