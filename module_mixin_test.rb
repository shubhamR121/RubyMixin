module Car
  def set_car
    puts "in car module"
  end
end
module Bike
  def set_bike
    puts "in bike module"
  end
end
class TestModule
  include Bike
  extend Car
end
TestModule.set_car
TestModule.new.set_bike

=begin
  
module A
  @@add =0
  def method1(num1,num2)
    @@add = num1 + num2
  end
end 

module B
  @@add2 =0
  def method1(num1,num2)
    @@add2 = num1 + num2
  end
end

class TestModule
  include A
  include B
  def method3
    return @@add 
    return @@add2 
  end
end
obj = TestModule.new
obj.method1(10,20)
puts obj.method3



module TestAddition1
  @@add
  def set1(num1, num2)
    @@add = num1 + num2
  end
end 

module TestAddition2
  @@add2
  def set2(num1, num2)
    @@add2 = num1 + num2
  end
end

class TestModule
  include A
  include B
  def get
    return @@add, @@add2
  end
end
obj = TestModule.new
obj.set1(10, 20)
obj.set2(20, 20)
puts obj.get  
=end