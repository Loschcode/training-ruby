#
# No Boring Zeros
# by Loschcode
#
def no_boring_zeros(num)
  n = num.to_s.chars
  n.unshift('+') if num > 0
  (n.first + n.reverse.reject{|e|['+','-'].include?e}.join.to_i.to_s.reverse).to_i
end

no_boring_zeros(960000)

# Best practice
def no_boring_zeros(num)
  return num if num.zero?
  num /= 10 until num % 10 != 0
  num
end