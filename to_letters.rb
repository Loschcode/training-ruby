#
# To letters
# by Loschcode
#

NEGATIVE = 'negative'
AND = 'and'

UNITS = [

 "zero",
 "one",
 "two",
 "three",
 "four",
 "five",
 "six",
 "seven",
 "eight",
 "nine",
 "ten",
 "eleven",
 "twelve",
 "thirteen",
 "fourteen",
 "fifteen",
 "sixteen",
 "seventeen",
 "eighteen",
 "nineteen"

]

BIGS = [nil,
 "thousand",
 "million",
 "billion",
 "trillion",
 "quadrillion",
 "quintillion",
 "sextillion",
 "octillion",
 "nonicillion",
 "decillion",
 "undecillion",
 "duodecillion",
 "tredecillion",
 "quattuordecillion",
 "quidecillion",
]

TENS = [

 "wrong",
 "wrong",
 "twenty",
 "thirty",
 "forty",
 "fifty",
 "sixty",
 "seventy",
 "eighty",
 "ninety"

]

class IntegerChunks
 
  attr_accessor :chunks
  attr_reader :integer

  def initialize(integer)
    @chunks = []
    @integer = integer
  end

  def size_exception?
    
    if chunks.size > BIGS.size
      true
    else
      false
    end

  end

  def to_letters

    @chunks.map { |c| c.to_letters }.zip(BIGS)
           .find_all { |c| c[0] != UNITS[0] }
           .map { |c| c.join ' ' }.reverse.join(' ').strip

  end

  def compose

    while integer != 0
      @integer, remaining = integer.divmod(1000)
      chunks << remaining 
    end

    if size_exception?
      raise ArgumentError, "Integer is way too big (#{chunks.reverse.join})." 
    else
      self
    end

  end

end

module Letters
  
  def to_letters

    case
    when self < 0
      negatives
    when self < 20
      units
    when self < 100
      tens
    when self < 1000
      hundreds
    else
      bigs
    end

  end

  private

  def negatives
    "#{NEGATIVE} #{(-self).to_letters}"
  end

  def units
    UNITS[self]
  end

  def tens
    division, remaining = self.divmod(10)
    TENS[division] + (remaining == 0 ? "" : "-#{remaining.to_letters}")
  end

  def hundreds
    division, remaining = self.divmod(100)
    "#{UNITS[division]} hundred" + (remaining == 0 ? "" : " #{AND} #{remaining.to_letters}")
  end

  def bigs
    IntegerChunks.new(self).compose.to_letters
  end

end

class Integer
  include Letters
end

# Working solution
def int_to_english(number)
  number.to_letters
end

puts int_to_english(1564684613251584361432138)