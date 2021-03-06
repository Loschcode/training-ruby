#
# Guess the presents someone will get
# by Loschcode
#
def guess_gifts(wishlist, presents)

  wishlist.map do |w|
    w[:name] if presents.include? w.reject { |key| key == :name }
  end.compact.uniq

end

guess_gifts([
        {:name => "mini puzzle", :size => "small", :clatters => "yes", :weight => "light"},
        {:name => "toy car", :size => "medium", :clatters => "a bit", :weight => "medium"},
        {:name => "card game", :size => "small", :clatters => "no", :weight => "light"}
        ],
      [
        {:size => "medium", :clatters => "a bit", :weight => "medium"},
        {:size => "small", :clatters => "yes", :weight => "light"}
      ]
      )

# Time complexity choice
def guess_gifts(wishlist, presents)

  # Transform the wishlist, mapping attributes to a list of names
  wishmap = Hash.new { |hash, attributes| hash[attributes] = [] }
  wishlist.each { |w| wishmap[w.reject { |k| k == :name }].push(w[:name]) }

  # Then just do the lookups
  presents.flat_map { |attributes| wishmap[attributes] }
end