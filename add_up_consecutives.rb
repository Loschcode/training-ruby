#
# Add up consecutives number in array
# by Loschcode
#
def add_up_consecutives(a)
  a.chunk { |n| n }.map(&:last).map { |p| p.reduce(:+) }
end