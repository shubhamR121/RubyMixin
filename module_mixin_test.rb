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
