#
# Help Mr.E Translator
# by Loschcode
#
def evenator(s)
  s.gsub(/[^a-zA-Z0-9\s]/i, '').split.map{ |e| e.size.odd? ? e+e.chars.last : e }.join(' ')
end

# Best practice
def evenator(s)
  s.tr('.,?!_','').split.map {|word| word.length.odd? ? word + word[-1] : word}.join(' ')
end

evenator('underscore is not considered a word..in this case,')

# evenator('underscore is not considered a word..in this case,')
# -> 'underscore is nott considered aa wordin this case'
