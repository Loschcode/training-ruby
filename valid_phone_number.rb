#
# Valid a US phone number
# Bonus with !!() to force boolean
# by Loschcode
#
def valid_phone_number(n)
  !!(n =~ /^\(\d{3}\)\ \d{3}-\d{4}$/)
end

valid_phone_number("(123) 456-7890")