#
# Decode the message
# by Loschcode
#
def decode(message)
  message.tr([*'a'..'z'].join, [*'a'..'z'].reverse.join)
end