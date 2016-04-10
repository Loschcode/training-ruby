#
# Generate Hashtags
# by Loschcode
#
require 'pry'

def generate_hashtag(str)
  str.empty? || str.tr(' ', '').size > 139 ? false : "##{str.split.map(&:capitalize).join}"
end

generate_hashtag("Hello there thanks for trying my Kata")

# Best practice
def generateHashtag(str)
  str = "#" << str.split.map(&:capitalize).join
  str.size <= 140 && str.size > 1 ? str : false
end