#
# Valid parenthesis check
# by Loschcode
#
def triple_trouble(one, two, three)
  one.chars.zip(two.chars).zip(three.chars).flatten.join
end

triple_trouble("aaa","bbb","ccc")