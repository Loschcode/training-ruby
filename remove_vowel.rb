#
# Remove vowel from a string in Ruby
# by Loschcode
#
class String

  def remove_vowel
    self.delete "aeiouyAEIOUY"
  end
  
end

"bonjour !".remove_vowel
"hey man !".remove_vowel