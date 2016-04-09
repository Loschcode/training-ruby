#
# Find outliers (odd or even but one)
# by Loschcode
#
def find_outlier(integers)

  odds = []
  evens = []

  integers.each do |n|

    odds << n if n.odd?
    evens << n if n.even?

    return odds.last if !odds.last.nil? && evens.size > 1
    return evens.last if !evens.last.nil? && odds.size > 1

  end

end

# Best
def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end