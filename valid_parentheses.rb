#
# Valid parenthesis check
# by Loschcode
#
def valid_parentheses(s)
  s.gsub!(/[^\(\)]/,"")
  (0..(s.size/2)).each { s.sub!('()', '') }
  s.empty?
end

check_parenthesis('()()()())()()()')
check_parenthesis('()()()(())()()()')
check_parenthesis(')()()()())()()()')
check_parenthesis('()()(hey)())ho()()()')