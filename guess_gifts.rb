#
# Guess the presents someone will get
# by Loschcode
#
def guess_gifts(wishlist, presents)

  wishlist.map do |w|
    w[:name] if presents.include? w.reject { |key| key == :name }
  end.compact

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