CALCULATOR

class Calculator
  
  def self.add(value1, value2)
    value1 + value2
  end
  
  def self.subtract(value1, value2)
    value1 - value2
  end  
  
  def self.multiply(value1, value2)
    value1 * value2
  end
  
  def self.divide(value1, value2)
    value1 / value2
  end  
end
________________________________________________________________________________________

________________________________________________________________________________________

ELEVATOR

class Elevator
  
  attr_accessor :floor
  
  def initialize(floor)
    @floor = floor
  end
  
  
  def go_up()
    self.floor+=1
    cheery_greeting()
  end
  
  def go_down()
    self.floor-=1
    cheery_greeting()
  end
  
  def cheery_greeting()
    puts "oh, ello top of the mornin to ya the floor your on just so happens to be the #{floor}!"
  end

end