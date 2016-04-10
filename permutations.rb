#
# Permutations
# by Loschcode
#
def permutations(string)
  string.chars.permutation.map(&:join).sort.uniq
end

permutations('aabb')