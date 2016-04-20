# 
# Classy Class implementation (Tests)
# by Loschcode
# 
class ClassyClass

  def self.run(arg=nil,&block)
    classy_class = ClassyClass.new
    classy_class.instance_eval(&block)
    classy_class
  end

  def write(msg='')
    puts "Message : #{msg}"
  end

end

ClassyClass.run do

  write('Yeah man')
  write('Im writing stuff')

end
