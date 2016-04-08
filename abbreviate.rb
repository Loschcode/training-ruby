#
# Abbreviate everything
# by Loschcode
#
class Abbreviator

  def self.abbreviate(string)
    string.split(/(\W+)/).map!(&:numberize).join
  end

end

# Monkey patching
class String

  def numberize
    if self.size < 4
      self
    else
      num = self.size-2
      "#{self[0]}#{num}#{self[-1]}"
    end
  end

end

puts Abbreviator.abbreviate("banana? bid, bidule-much machin. chose")
