#
# Multiply the number by 5 raised to the number of digits
# by Loschcode
#
def multiply(n)
   n * 5 ** n.to_s.sub('-', '').chars.count
end