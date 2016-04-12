#
# Pair Zeros
# by Loschcode
#
def pair_zeros(numbers)

  # Couldn't find anything better, i feel bad looking at this :-(
  lock = false
  numbers.map do |n|

    if n == 0 && lock == false
      lock = true
      n
    elsif n == 0
      lock = false
      nil
    else
      n
    end

  end.compact

end

# Best practice (aguable)
def pair_zeros(arr)
  toggle = nil
  arr.map{|x| next x unless x == 0; toggle = (toggle ? nil : 0) }.compact
end

pair_zeros([0,1,2,3,4,5,0,4,0,3,0,3])