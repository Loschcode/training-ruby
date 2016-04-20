# Ruby’s Other Secret Power: Code Blocks | 41
class SortedList

 include Enumerable

 def initialize
   @data = []
 end
 
 def <<(element)
   (@data << element).sort!
 end

 def each
   @data.each { |e| yield(e) }
 end

end