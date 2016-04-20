# 
# Block Crazy (Tests)
# by Loschcode
# 
require 'pry'
class BlockCrazy

  def send
    puts "We will send"
    connection do # you can also add arguments here

      puts "This is something when i've sent it"
      puts "Yes it is."

    end
  end

  def get
    puts "We will get"
    connection { puts "Thisis something when i've got it" }
  end

  def connection
    puts "Do variable connection stuff ..."
    yield # and get back the arguments here
  ensure
    puts "Whatever happened, I got executed."
  end

end

b = BlockCrazy.new
binding.pry