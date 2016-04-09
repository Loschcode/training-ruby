#
# Simpler Interactive Interpreter
# by Loschcode
# UNDER CONSTRUCTION
#
require 'pry'
class Interpreter

  def initialize
    @vars = {}
    @functions = {}
    @tokens = []
  end  

  def input expr

    @tokens = tokenize(expr).map{|a|a[0]}
    @vars = {}

    @tokens.map! do |x|

      # we first understand the entities
      case
      when x.is_i?
        {:number => x.to_i}
      when x.is_var?
        {:variable => x}
      when x.is_op?
        {:operator => x}
      else
        x
      end

    end

    @tokens.each do |x|



    end

  end

  private

  def tokenize program
    return [] if program == ''

    regex = /\s*([-+*\/\%=\(\)]|[A-Za-z_][A-Za-z0-9_]*|[0-9]*\.?[0-9]+)\s*/
    program.scan(regex).select { |s| !(s =~ /^\s*$/) }
  end
end

# Monkey patching
class String

  def is_i?
    !!(self =~ /\A[-+]?[0-9]+\z/)
  end

  def is_var?
    !!(self =~ /\A[a-zA-Z]+\z/) 
  end

  def is_op?
    %w(- + * / % =).include? self
  end

end

inter = Interpreter.new
inter.input('2+2')