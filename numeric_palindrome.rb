#
# Numeric Palindrome
# by Loschcode
# UNDER CONSTRUCTION
require 'pry'
def numeric_palindrome(*args)
  binding.pry
  args.reduce(&:*).to_s.gsub('0','').chars.sort.reverse.join.to_i
end

numeric_palindrome(937,113)