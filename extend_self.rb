module MyModule

  #extend self

  def something_from_instance
    puts "Instance !"
  end

end

class MyClass
  include MyModule
end

require 'pry'
binding.pry