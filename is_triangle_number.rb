#
# Check if a number is a triangle number or not
# by Loschcode
#
def is_triangle_number(n)
  return false unless n.is_a? Integer
  (square = ((8*n)+1) ** 0.5) - square.to_i == 0
end
