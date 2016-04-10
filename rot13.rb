#
# Rot13
# by Loschcode
#
def rot13(string)
  alpha = ('a'..'z').to_a*2+('A'..'Z').to_a*2
  string.chars.map { |s| alpha.index(s).nil? ? s : alpha[alpha.index(s)+13] }.join
end

# Best practice
def rot13(message)
  p message.tr('a-zA-Z', 'n-za-mN-ZA-M')
end

rot13('test J2LMJ 8')