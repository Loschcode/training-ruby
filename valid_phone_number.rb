#
# Valid a US phone number
# Bonus with !!() to force boolean
# 
# NOTE : Prefer `\A` and `\z` to `^` and `$`
# Since it only checks a beginning of line in the second case
# 
# by Loschcode
#
def valid_phone_number(n)
  !!(n =~ /\A\(\d{3}\)\ \d{3}-\d{4}\z/)
end

valid_phone_number("(123) 456-7890")