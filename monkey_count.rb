#
# Count the monkeys
# by Loschcode
#
def monkey_count(n)
  1.upto(n).to_a
end

# Best practice
def monkey_count(n)
  [*1..n]
end