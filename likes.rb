#
# Likes display system
# by Loschcode
#
def likes(names)
  case names.size
  when 0
    "no one likes this"
  when 1
    "%s likes this" % names
  when 2
    "%s and %s like this" % names
  when 3
    "%s, %s and %s like this" % names
  else
    "%s, %s and %s others like this" % [names[0], names[1], names.size - 2]
  end
end

puts likes(["Peter"])
puts likes(["Jacob", "Alex"])
puts likes(["Max", "John", "Mark"])
puts likes(["Alex", "Jacob", "Mark", "Max"])

#likes [] // must be "no one likes this"
#likes ["Peter"] // must be "Peter likes this"
#likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
#likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
#likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"