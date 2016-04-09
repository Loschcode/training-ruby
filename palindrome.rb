#
# Is is a palindrome ?
# 
# NOTE : without .reverse activated for more challenging code
# 
# by Loschcode
#
def palindrome(string)
  clean = string.gsub(/\W+/, '').downcase.chars
  reversed = []
  (clean.size-1).downto(0).each { |n| reversed << clean[n] }
  reversed == clean
end

palindrome("Amore, Roma")