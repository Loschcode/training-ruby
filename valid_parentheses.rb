#
# Valid parenthesis check
# by Loschcode
#
#
require 'benchmark'

def valid_parentheses(s)
  s.gsub!(/[^\(\)]/,"")
  (0..(s.size/2)).each { s.sub!('()', '') }
  s.empty?
end

valid_parentheses('()()()())()()()')
valid_parentheses('()()()(())()()()')
valid_parentheses(')()()()())()()()')
valid_parentheses('()()(hey)())ho()()()')