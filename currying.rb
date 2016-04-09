require('pry')

# Currying
def add a, b ; a + b; end
sum = method(:add).curry

binding.pry