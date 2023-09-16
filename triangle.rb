# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides_arr = [a,b,c]
  raise TriangleError if sides_arr.min <= 0
  raise TriangleError if sides_arr.sort[0,2].sum <= sides_arr.max

  how_many_eaual = sides_arr.tally.values.max
  {2 => :isosceles, 3 => :equilateral}.fetch(how_many_eaual, :scalene)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
