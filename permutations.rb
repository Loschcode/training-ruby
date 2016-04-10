#
# Permutations
# by Loschcode
#
def permutations(string)
  binding.pry
  string.chars.permutation.map(&:join).sort.uniq
end

permsol('aabb')