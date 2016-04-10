#
# IQ Test
# by Loschcode
#
def iq_test(numbers)
  (i = numbers.split.map(&:to_i)).index(i.partition(&:odd?).find(&:one?).first)+1
end