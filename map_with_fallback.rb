#
# Map with fallback
# by Loschcode
#
require 'pry'
class Array
  def map_with_fallback(*fn)

    if fn.first.nil? || fn.first.call(self.first).nil?
      fn.last[:fallback].call unless fn.last[:fallback].nil?
    else
      self.map! { |s| fn.first.call(s) unless fn.first.nil? }
    end
    
  end
end


# Best practice
class Array
  def map_with_fallback(do_this, fallback: ->{})
    empty? ? fallback.call : map(&do_this)
  end
end

items = [1,2,3]
no_items = []

items.map_with_fallback(->(i) { i + 1 })
no_items.map_with_fallback(->(i){}, fallback: -> { 'empty' })