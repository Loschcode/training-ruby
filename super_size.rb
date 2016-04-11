#
# 231 to 321 (biggest number out of digits)
# by Loschcode
#
def super_size(n)
  n.to_s.chars.sort.reverse.join.to_i
end

